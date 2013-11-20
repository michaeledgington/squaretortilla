<cfquery name="rs.q" datasource="square" username="root" password="spot_light10">
            SELECT *
            FROM kaar_city_geo
            
            </cfquery>
			<cfset rs.ac = createObject("component", "ArrayCollection").init() />
			<cfset rs.ac.setData( rs.q ) />
			<cfset rs.ac.setDataHandle(false) />
			<cfreturn rs.ac.$renderdata() />
  

<cfset fileWrite(
"#rs.q#.json"
) />

<!--- Get the raw resourced path that was requested. --->
<cfset resourcePath = cgi.path_info />


<!---
	NOTE: ColdFusion 10 seems to hang until I make a request to get
	the POST body. Not sure why.
--->
<cfif ( cgi.request_method neq "GET" )>

	<cfset requestBody = getHTTPRequestData().content />

</cfif>


<!---
	Identify the type of request that has come in based on the
	pattern of the requested resource path.
--->
<cfif reFind( "^/messages$", resourcePath )>

	<cfset response = "GET without ID." />

<cfelseif reFind( "^/messages/clear-all$", resourcePath )>

	<cfset response = "POST with clear-all Controller." />

<cfelseif reFind( "^/messages/\d+$", resourcePath )>

	<cfset response = "GET with ID." />

<cfelseif reFind( "^/messages/\d+/archive+$", resourcePath )>

	<cfset response = "POST with archive controller" />

<cfelse>

	<cfset response = "Hmm, couldn't match resource." />

</cfif>


<!---
	Serialize the response as JSON. AngularJS will know how to
	parse this.
--->
<cfset serializedResponse = serializeJSON( response ) />

<!--- Add header for debugging the path. --->
<cfheader
	name="X-Debug-Path"
	value="#cgi.path_info#"
	/>

<!--- Stream response back to the client. --->
<cfcontent
	type="application/json"
	variable="#charsetDecode( serializedResponse, 'utf-8' )#"
	/>