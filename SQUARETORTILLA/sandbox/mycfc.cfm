<cfsetting showdebugoutput="no">
<cfinvoke component="cfc.MyComponent"
			method="getPhotographers"
            returnvariable="qphotographer"></cfinvoke>
<cfinvoke component="cfc.MyComponent"
			method="getAllPhotos"
            returnvariable="qphotos"></cfinvoke>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>
<table>
  <tr>
    <th>Photographer ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Featured</th>
    <td>&nbsp;</td>
  </tr>
  <cfoutput query="qphotographer">
    <tr>
      <td>#qphotographer.photographerid#</td>
      <td>#qphotographer.firstname#</td>
      <td>#qphotographer.lastname#</td>
      <td>#qphotographer.featured#</td>
      <td><a href="photos.cfm?photograherid=#qphotographer.photographerid#">View Photos</a></td>
    </tr>
  </cfoutput>
</table>

<table>
  <tr>
    <td>Photo ID</td>
    <td>filename</td>
    <td>photograherid</td>
    <td>caption</td>
    <td>price</td>
  </tr>
  <cfoutput query="qphotos">
  <tr>
    <td>#qphotos.photoid#</td>
    <td>#qphotos.filename#</td>
    <td>#qphotos.photograherid#</td>
    <td>#qphotos.caption#</td>
    <td>#qphotos.price#</td>
  </tr>
  </cfoutput>
</table>


<!--- <cfdump var="#qphotographer#"> --->
<!--- <cfdump var="#qphotos#"> --->
</body>
</html>