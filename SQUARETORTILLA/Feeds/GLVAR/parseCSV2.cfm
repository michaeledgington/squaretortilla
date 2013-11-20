<cfquery name="deleteDaily" datasource="square">

DELETE FROM square.glvar_daily;

</cfquery>

<cfoutput>Yesterdays updates deleted..<br /></cfoutput>

<cfquery name="importcsv" datasource="square"> 

        LOAD DATA INFILE 'GLVAR_Res_Daily21_22.txt'
        INTO TABLE square.glvar_daily
            FIELDS TERMINATED BY '|'
            LINES TERMINATED BY '\n'

</cfquery>

<cfoutput>Getting Geo Location for updates...<br /></cfoutput>
<cfsetting requesttimeout="360">
<!---query the db--->
<cfquery datasource="square" name="updates">
    SELECT MLS_Id,Street_Number,Street_Name,City,Zip_Code,Latitude,Longitude
    FROM square.glvar_daily
</cfquery>




<cfloop query="updates">


    <cftry>
       <!--- get the data back from Bing--->
        <cfhttp url="http://dev.virtualearth.net/REST/v1/Locations/US/NV/#updates.Zip_Code#/#updates.City#/#updates.Street_Number#%20#updates.Street_Name#?o=xml&key=AgM3wR0ojSpxYaJeh6WS7p2kcckECqVQ5HkrweFcZCcyOj E3mYVvIrF_WzbETMeb" timeout = "5" method="GET">
 
        <cfif val(cfhttp.statusCode) EQ 200>  <!--- will turn "200 OK" into 200 --->
            <cfset xbinglocation = xmlparse(cfhttp.filecontent)>
            <cfset lat=xbinglocation.Response.ResourceSets.ResourceSet.Resources.Location.Point.Latitude.XmlText>
            <cfset long=xbinglocation.Response.ResourceSets.ResourceSet.Resources.Location.Point.Longitude.XmlText>
 
             <!---update the latitude and longitude fields--->
            <cfquery datasource="square" name="addGeo">
                UPDATE square.glvar_daily
                SET Latitude =<cfqueryparam value="#lat#" cfsqltype="cf_sql_float">,
                Longitude = <cfqueryparam value="#long#" cfsqltype="cf_sql_float">
                WHERE MLS_Id = <cfqueryparam value="#updates.MLS_Id#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfoutput>#updates.MLS_ID# Geolocation Updated</cfoutput><br>
        </cfif>
       
        <cfcatch type="any">
            <cfoutput>Oops, an error on row ID = #updates.MLS_Id#</cfoutput>  <cfdump var="#cfcatch#">
        </cfcatch>
    </cftry>
</cfloop>
<cfoutput> Geo Location Complete...<br /></cfoutput>

<cfquery datasource="square" name="loadupdates">
    SELECT MLS_Id, List_Price, Public_Address, Street_Number, Street_Name, Unit_Number, City, Zip_Code, Subdivision_Name, Bedroom, Baths_Total, Full_Baths, Half_Baths, Square_Feet, Lot_Sqft, Garage_Capacity, Garage_Type, High_School, Junior_School, Property_Description, Listing_Office_Name, Listing_Office_Id, Listing_Agent_Name, Listing_Agent_Phone, Listing_Agent_Id, Short_Sale, Open_House_Flag, List_Date, Last_Image_Update, Price_Change_Date, Image_Count, Latitude, Longitude
    FROM square.glvar_daily
</cfquery>
<cfoutput> Updating GLVAR...<br /></cfoutput>
<cfloop query="loadupdates">

<cfquery name="mergUpdates" datasource="square">

        INSERT INTO square.glvar 
        
        (MLS_Id, List_Price, Public_Address, Street_Number, Street_Name, Unit_Number, City, Zip_Code, Subdivision_Name, Bedroom, Baths_Total, Full_Baths, Half_Baths, Square_Feet, Lot_Sqft, Garage_Capacity, Garage_Type, High_School, Junior_School, Property_Description, Listing_Office_Name, Listing_Office_Id, Listing_Agent_Name, Listing_Agent_Phone, Listing_Agent_Id, Short_Sale, Open_House_Flag, List_Date, Last_Image_Update, Price_Change_Date, Image_Count, Latitude, Longitude) 
        
        VALUES 
        
        (#loadupdates.MLS_Id#,List_Price = #loadupdates.List_Price#,Public_Address = #loadupdates.Public_Address#,Street_Number = #loadupdates.Street_Number#,Street_Name = #loadupdates.Street_Name#,Unit_Number = #loadupdates.Unit_Number#,City = #loadupdates.City#,Zip_Code = #loadupdates.Zip_Code#,Subdivision_Name = #loadupdates.Subdivision_Name#,Bedroom = #loadupdates.Bedroom#,Baths_Total = #loadupdates.Baths_Total#,Full_Baths = #loadupdates.Full_Baths#,Half_Baths = #loadupdates.Half_Baths#,Square_Feet = #loadupdates.Square_Feet#,Lot_Sqft = #loadupdates.Lot_Sqft#,Garage_Capacity = #loadupdates.Garage_Capacity#,Garage_Type = #loadupdates.Garage_Type#,High_School = #loadupdates.High_School#,Junior_School = #loadupdates.Junior_School#,Property_Description = #loadupdates.Property_Description#,Listing_Office_Name = #loadupdates.Listing_Office_Name#,Listing_Office_Id = #loadupdates.Listing_Office_Id#,Listing_Agent_Name = #loadupdates.Listing_Agent_Name#,Listing_Agent_Phone = #loadupdates.Listing_Agent_Phone#,Listing_Agent_Id = #loadupdates.Listing_Agent_Id#,Short_Sale = #loadupdates.Short_Sale#,Open_House_Flag = #loadupdates.Open_House_Flag#,List_Date = #loadupdates.List_Date#,Last_Image_Update = #loadupdates.Last_Image_Update#,Price_Change_Date = #loadupdates.Price_Change_Date#,Image_Count = #loadupdates.Image_Count#,Latitude = #loadupdates.Latitude#,Longitude = #loadupdates.Longitude#)
        
        
        ON DUPLICATE KEY UPDATE MLS_Id=MLS_Id+#loadupdates.MLS_Id#;
        
        UPDATE square.glvar SET MLS_Id=MLS_Id+#loadupdates.MLS_Id# 
        
        WHERE
        
         MLS_Id = #loadupdates.MLS_Id#,List_Price = #loadupdates.List_Price#,Public_Address = #loadupdates.Public_Address#,Street_Number = #loadupdates.Street_Number#,Street_Name = #loadupdates.Street_Name#,Unit_Number = #loadupdates.Unit_Number#,City = #loadupdates.City#,Zip_Code = #loadupdates.Zip_Code#,Subdivision_Name = #loadupdates.Subdivision_Name#,Bedroom = #loadupdates.Bedroom#,Baths_Total = #loadupdates.Baths_Total#,Full_Baths = #loadupdates.Full_Baths#,Half_Baths = #loadupdates.Half_Baths#,Square_Feet = #loadupdates.Square_Feet#,Lot_Sqft = #loadupdates.Lot_Sqft#,Garage_Capacity = #loadupdates.Garage_Capacity#,Garage_Type = #loadupdates.Garage_Type#,High_School = #loadupdates.High_School#,Junior_School = #loadupdates.Junior_School#,Property_Description = #loadupdates.Property_Description#,Listing_Office_Name = #loadupdates.Listing_Office_Name#,Listing_Office_Id = #loadupdates.Listing_Office_Id#,Listing_Agent_Name = #loadupdates.Listing_Agent_Name#,Listing_Agent_Phone = #loadupdates.Listing_Agent_Phone#,Listing_Agent_Id = #loadupdates.Listing_Agent_Id#,Short_Sale = #loadupdates.Short_Sale#,Open_House_Flag = #loadupdates.Open_House_Flag#,List_Date = #loadupdates.List_Date#,Last_Image_Update = #loadupdates.Last_Image_Update#,Price_Change_Date = #loadupdates.Price_Change_Date#,Image_Count = #loadupdates.Image_Count#,Latitude = #loadupdates.Latitude#,Longitude = #loadupdates.Longitude#;

</cfquery>
</cfloop>








<!---INSERT INTO table (a,b,c) VALUES (1,2,3)
  ON DUPLICATE KEY UPDATE c=c+1;

UPDATE table SET c=c+1 WHERE a=1;--->

 	
   <cfoutput>Updates applied</cfoutput>
   
 <!---MERGE square.glvar ga
USING square.glvar_daily gd
ON ga.MLS_Id = gd.MLS_Id
WHEN MATCHED THEN
  	UPDATE set  ga.MLS_Id = gd.MLS_Id,ga.List_Price = gd.List_Price,ga.Public_Address = gd.Public_Address,ga.Street_Number = gd.Street_Number,ga.Street_Name = gd.Street_Name,ga.Unit_Number = gd.Unit_Number,ga.City = gd.City,ga.Zip_Code = gd.Zip_Code,ga.Subdivision_Name = gd.Subdivision_Name,ga.Bedroom = gd.Bedroom,ga.Baths_Total = gd.Baths_Total,ga.Full_Baths = gd.Full_Baths,ga.Half_Baths = gd.Half_Baths,ga.Square_Feet = gd.Square_Feet,ga.Lot_Sqft = gd.Lot_Sqft,ga.Garage_Capacity = gd.Garage_Capacity,ga.Garage_Type = gd.Garage_Type,ga.High_School = gd.High_School,ga.Junior_School = gd.Junior_School,ga.Property_Description = gd.Property_Description,ga.Listing_Office_Name = gd.Listing_Office_Name,ga.Listing_Office_Id = gd.Listing_Office_Id,ga.Listing_Agent_Name = gd.Listing_Agent_Name,ga.Listing_Agent_Phone = gd.Listing_Agent_Phone,ga.Listing_Agent_Id = gd.Listing_Agent_Id,ga.Short_Sale = gd.Short_Sale,ga.Open_House_Flag = gd.Open_House_Flag,ga.List_Date = gd.List_Date,ga.Last_Image_Update = gd.Last_Image_Update,ga.Price_Change_Date = gd.Price_Change_Date,ga.Image_Count = gd.Image_Count,ga.Latitude = gd.Latitude,ga.Longitude = gd.Longitude
  	WHEN NOT MATCHED THEN
  	INSERT (ga.MLS_Id, ga.List_Price, ga.Public_Address, ga.Street_Number, ga.Street_Name, ga.Unit_Number, ga.City, ga.Zip_Code, ga.Subdivision_Name, ga.Bedroom, ga.Baths_Total, ga.Full_Baths, ga.Half_Baths, ga.Square_Feet, ga.Lot_Sqft, ga.Garage_Capacity, ga.Garage_Type, ga.High_School, ga.Junior_School, ga.Property_Description, ga.Listing_Office_Name, ga.Listing_Office_Id, ga.Listing_Agent_Name, ga.Listing_Agent_Phone, ga.Listing_Agent_Id, ga.Short_Sale, ga.Open_House_Flag, ga.List_Date, ga.Last_Image_Update, ga.Price_Change_Date, ga.Image_Count, ga.Latitude, ga.Longitude)
  
   values (gd.MLS_Id, gd.List_Price, gd.Public_Address, gd.Street_Number, gd.Street_Name, gd.Unit_Number, gd.City, gd.Zip_Code, gd.Subdivision_Name, gd.Bedroom, gd.Baths_Total, gd.Full_Baths, gd.Half_Baths, gd.Square_Feet, gd.Lot_Sqft, gd.Garage_Capacity, gd.Garage_Type, gd.High_School, gd.Junior_School, gd.Property_Description, gd.Listing_Office_Name, gd.Listing_Office_Id, gd.Listing_Agent_Name, gd.Listing_Agent_Phone, gd.Listing_Agent_Id, gd.Short_Sale, gd.Open_House_Flag, gd.List_Date, gd.Last_Image_Update, gd.Price_Change_Date, gd.Image_Count, gd.Latitude, gd.Longitude);--->