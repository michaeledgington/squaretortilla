<cfparam name="PageNum_qphotographers" default="1">
<cfparam name="PageNum_qphotos" default="1">
<cfquery name="qphotos" datasource="photogallerydb" username="root" password="spot_light10">
SELECT *
FROM photo 
</cfquery>
<cfinvoke 
 component="cfc.photographers"
 method="getAllPhotographers"
 returnvariable="qphotographers">
</cfinvoke>

<cfset MaxRows_qphotographers=10>
<cfset StartRow_qphotographers=Min((PageNum_qphotographers-1)*MaxRows_qphotographers+1,Max(qphotographers.RecordCount,1))>
<cfset EndRow_qphotographers=Min(StartRow_qphotographers+MaxRows_qphotographers-1,qphotographers.RecordCount)>
<cfset TotalPages_qphotographers=Ceiling(qphotographers.RecordCount/MaxRows_qphotographers)>
<cfset MaxRows_qphotos=10>
<cfset StartRow_qphotos=Min((PageNum_qphotos-1)*MaxRows_qphotos+1,Max(qphotos.RecordCount,1))>
<cfset EndRow_qphotos=Min(StartRow_qphotos+MaxRows_qphotos-1,qphotos.RecordCount)>
<cfset TotalPages_qphotos=Ceiling(qphotos.RecordCount/MaxRows_qphotos)>
<cfsetting showdebugoutput="no">

<cfsetting showdebugoutput="no">
<cfparam name="attributes.pagetitle" default="Square Tortilla">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<cfoutput>
  <title>#attributes.pagetitle# current photographers is #qphotographers.RecordCount#</title>
</cfoutput>
</head>

<body>
<table border="1">
  <tr>
    <td>photographerid</td>
    <td>firstname</td>
    <td>lastname</td>
    <td>featured</td>
  </tr>
  <cfoutput query="qphotographers" startRow="#StartRow_qphotographers#" maxRows="#MaxRows_qphotographers#">
    <tr>
      <td>#qphotographers.photographerid#</td>
      <td>#qphotographers.firstname#</td>
      <td>#qphotographers.lastname#</td>
      <td>#qphotographers.featured#</td>
    </tr>
  </cfoutput>
</table>
<table border="1">
  <tr>
    <td>photoid</td>
    <td>filename</td>
    <td>photograherid</td>
    <td>caption</td>
    <td>price</td>
  </tr>
  <cfoutput query="qphotos" startRow="#StartRow_qphotos#" maxRows="#MaxRows_qphotos#">
  <cfif qphotos.currentRow mod 2 is 1>
  	<cfset bgcolor="white">
  <cfelse>
  	<cfset bgcolor="grey">
    </cfif>
    <tr bgcolor="#variables.bgcolor#">
      <td>#qphotos.photoid#</td>
      <td>#qphotos.filename#</td>
      <td>#qphotos.photograherid#</td>
      <td>#qphotos.caption#</td>
      <td>#qphotos.price#</td>
    </tr>
  </cfoutput>
</table>
</body>
</html>