
<cfsetting requesttimeout="360">
<!---query the db--->
<cfquery datasource="square" name="updates">
    SELECT MLS_Id,Street_Number,Street_Name,City,Zip_Code,Latitude,Longitude
    FROM square.glvar_rentals
</cfquery>
<cfset Start = 3001> 
<cfset End = 3500> 
<cfloop query="updates"  startRow = "#Start#" endRow = "#End#">
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

<cfset Start = 3501> 
<cfset End = 4000> 
<cfloop query="updates"  startRow = "#Start#" endRow = "#End#">
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
<cfset Start = 4001> 
<cfset End = 4500> 
<cfloop query="updates"  startRow = "#Start#" endRow = "#End#">
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
<cfset Start = 4501> 
<cfset End = 5000> 
<cfloop query="updates"  startRow = "#Start#" endRow = "#End#">
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


