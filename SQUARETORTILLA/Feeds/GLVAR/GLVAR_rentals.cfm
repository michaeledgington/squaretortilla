<!---delete yesteday updates--->

<cfquery name="deleteDaily" datasource="square">

DELETE FROM square.glvar_rentals;

</cfquery>

<cfoutput>Yesterdays updates deleted..<br /></cfoutput>

<!---import todays updates--->

<cfquery name="importcsv" datasource="square"> 

        LOAD DATA INFILE 'Rental.txt'
        INTO TABLE square.glvar_rentals
            FIELDS TERMINATED BY '|'
            LINES TERMINATED BY '\n'

</cfquery>
<cfoutput>Getting Geo Location for updates...<br /></cfoutput>


<cfsetting requesttimeout="360">
<!---get the geo lat long--->
<cfquery datasource="square" name="updates">
    SELECT MLS_Id,Street_Number,Street_Name,City,Zip_Code,Latitude,Longitude
    FROM square.glvar_rentals
</cfquery>
<!---<cfset Start = 1> 
<cfset End = 500> --->
<cfloop query="updates"  <!---startRow = "#Start#" endRow = "#End#"--->>
  <cftry>
    <!--- get the data back from Bing--->
    <cfhttp url="http://dev.virtualearth.net/REST/v1/Locations/US/NV/#updates.Zip_Code#/#updates.City#/#updates.Street_Number#%20#updates.Street_Name#?o=xml&key=AgM3wR0ojSpxYaJeh6WS7p2kcckECqVQ5HkrweFcZCcyOj E3mYVvIrF_WzbETMeb" timeout = "6" method="GET">
    <cfif val(cfhttp.statusCode) EQ 200>
      <!--- will turn "200 OK" into 200 --->
      <cfset xbinglocation = xmlparse(cfhttp.filecontent)>
      <cfset lat=xbinglocation.Response.ResourceSets.ResourceSet.Resources.Location.Point.Latitude.XmlText>
      <cfset long=xbinglocation.Response.ResourceSets.ResourceSet.Resources.Location.Point.Longitude.XmlText>
      
      <!---update the latitude and longitude fields--->
      <cfquery datasource="square" name="addGeo">
                UPDATE square.glvar_rentals
                SET Latitude =<cfqueryparam value="#lat#" cfsqltype="cf_sql_float">,
                Longitude = <cfqueryparam value="#long#" cfsqltype="cf_sql_float">
                WHERE MLS_Id = <cfqueryparam value="#updates.MLS_Id#" cfsqltype="cf_sql_integer">
            </cfquery>
      <cfoutput>#updates.MLS_ID# Geolocation Updated</cfoutput><br>
    </cfif>
    <cfcatch type="any">
      <cfoutput>Oops, an error on row ID = #updates.MLS_Id#</cfoutput>
      <cfdump var="#cfcatch#">
    </cfcatch>
  </cftry>
</cfloop>
<cfoutput> Geo Location Complete...<br /></cfoutput>

<!---remove any changed listings--->
<cfquery datasource="square" name="removeupdated">
            SELECT MLS_Id
            FROM square.glvar_rentals
</cfquery>

<cfloop query="removeupdated">
  <cfquery datasource="square" name="deleteold">

DELETE FROM square.glvar WHERE MLS_Id=#removeupdated.MLS_Id#;

</cfquery>
</cfloop>
<!---add todays updates to GLVAR--->
<cfquery datasource="square" name="loadupdates">
            SELECT MLS_Id, List_Price, Public_Address, Street_Number, Street_Name, Unit_Number, City, Zip_Code, Subdivision_Name, Bedroom, Baths_Total, Full_Baths, Half_Baths, Square_Feet, Lot_Sqft, Garage_Capacity, Garage_Type, High_School, Junior_School, Property_Description, Listing_Office_Name, Listing_Office_Id, Listing_Agent_Name, Listing_Agent_Phone, Listing_Agent_Id, Short_Sale, Open_House_Flag, List_Date, Last_Image_Update, Price_Change_Date, Image_Count, Latitude, Longitude
            FROM square.glvar_rentals
</cfquery>
<cfloop query="loadupdates">
  <cfquery name="mergUpdates" datasource="square">
        
        INSERT INTO square.glvar (MLS_Id, List_Price, Public_Address, Street_Number, Street_Name, Unit_Number, City, Zip_Code, Subdivision_Name, Bedroom, Baths_Total, Full_Baths, Half_Baths, Square_Feet, Lot_Sqft, Garage_Capacity, Garage_Type, High_School, Junior_School, Property_Description, Listing_Office_Name, Listing_Office_Id, Listing_Agent_Name, Listing_Agent_Phone, Listing_Agent_Id, Short_Sale, Open_House_Flag, List_Date, Last_Image_Update, Price_Change_Date, Image_Count, Latitude, Longitude) 
        
        VALUES (<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.MLS_Id#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.List_Price#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Public_Address#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Street_Number#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Street_Name#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Unit_Number#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.City#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Zip_Code#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Subdivision_Name#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Bedroom#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Baths_Total#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Full_Baths#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Half_Baths#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Square_Feet#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Lot_Sqft#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Garage_Capacity#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Garage_Type#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.High_School#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Junior_School#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Property_Description#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Listing_Office_Name#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Listing_Office_Id#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Listing_Agent_Name#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Listing_Agent_Phone#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Listing_Agent_Id#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Short_Sale#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Open_House_Flag#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.List_Date#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Last_Image_Update#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Price_Change_Date#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Image_Count#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Latitude#">,<cfqueryparam cfsqltype="cf_sql_varchar" value="#loadupdates.Longitude#">)


        </cfquery>
</cfloop>
<cfoutput>Updates applied</cfoutput>

<!---remove any changed listings from geo--->
<cfquery datasource="square" name="removeupdatedgeo">
            SELECT MLS_Id
            FROM square.glvar_rentals
</cfquery>
<cfloop query="removeupdatedgeo">
  <cfquery datasource="square" name="deleteoldgeo">

DELETE FROM square.glvar_geo WHERE MLS_Id=#removeupdatedgeo.MLS_Id#;

</cfquery>
</cfloop>
<cfoutput>Changed Listing Geo deleted</cfoutput> 

<!---add any changed listings to geo--->


<cfquery datasource="square" name="loadGeo">

            SELECT MLS_Id,Latitude,Longitude
            FROM glvar_rentals
    
</cfquery>

<cfloop query="loadGeo" >
<cfquery datasource="square" name="addGeo">

            INSERT INTO glvar_geo (MLS_Id,Latitude,Longitude )
                            
            VALUES
            ( #loadGeo.MLS_Id#,#loadGeo.Latitude#,#loadGeo.Longitude# );
                     
 </cfquery>
</cfloop>
<cfoutput>Geo Updated</cfoutput> 


<!---remove todays off markets--->
<cfquery name="deleteDaily" datasource="square">

DELETE FROM square.glvar_off_market;

</cfquery>
<cfquery name="importOffMarkets" datasource="square"> 

        LOAD DATA INFILE 'Rentals_offmarket.txt'
        INTO TABLE square.glvar_off_market
            FIELDS TERMINATED BY '|'
            LINES TERMINATED BY '\n'

</cfquery>
<cfquery datasource="square" name="removeOffMarket">
            SELECT MLS_Id
            FROM square.glvar_off_market
</cfquery>
<cfloop query="removeOffMarket">
  <cfquery datasource="square" name="deleteoffmarkets">

DELETE FROM square.glvar WHERE MLS_Id=#removeupdated.MLS_Id#;

</cfquery>
</cfloop>
<cfoutput>Off markets removed</cfoutput> 