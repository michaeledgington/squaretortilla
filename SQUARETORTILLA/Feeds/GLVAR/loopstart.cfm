

<cfquery datasource="square" name="ListingShort">
    SELECT MLS_Id,Street_Number,Street_Name,City,Zip_Code,Latitude,Longitude
    FROM GLVAR
</cfquery>

<cfset Start = 5> 
<cfset End = 10> 
<cfloop query = "ListingShort" 
    startRow = "#Start#" 
    endRow = "#End#"> 
<cfoutput>#ListingShort.MLS_ID#</cfoutput><br>
</cfloop>