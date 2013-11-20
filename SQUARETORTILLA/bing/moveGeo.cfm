
<cfsetting requesttimeout="460">
<!---query the db--->
<cfquery datasource="square" name="ListingShort">
    SELECT MLS_Id,Latitude,Longitude
    FROM GLVAR
</cfquery>


<!---<cfset Start = 250> 
<cfset End = 500> --->


<cfloop query="ListingShort" <!---startRow = "#Start#" endRow = "#End#"--->>


   
            <cfquery datasource="square" name="addGeo">
                INSERT INTO glvar_geo (MLS_Id,Latitude,Longitude )
                
                 VALUES
                       ( #ListingShort.MLS_Id#,#ListingShort.Latitude#,#ListingShort.Longitude# );
                      <!--- WHERE MLS_Id = #ListingShort.MLS_Id#--->
                
              
            </cfquery>
            
</cfloop>




