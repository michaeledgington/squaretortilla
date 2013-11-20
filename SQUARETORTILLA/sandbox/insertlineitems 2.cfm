<cfif IsDefined("form.itemId")>

<cfinvoke 
 component="cfc.lineitems"
 method="addItem">
	<cfinvokeargument name="formData" value="#form#"/>
</cfinvoke>

<cflocation url="lineitems.cfm" addtoken="no">

</cfif>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>


<cfform>

<table>
  <tr>
    <td>item ID:</td>
    <td><cfinput type="text" name="itemId"  maxlength="11"></td>
  </tr>
  <tr>
    <td>item Name:</td>
    <td><cfinput type="text" name="name"  maxlength="20"></td>
  </tr>
   <tr>
    <td>item Desc:</td>
    <td><cfinput type="text" name="description"  maxlength="100"></td>
  </tr>
   <tr>
    <td>item qty:</td>
    <td><cfinput type="text" name="quantity"  maxlength="10"></td>
  </tr>
   <tr>
    <td>item unit price:</td>
    <td><cfinput type="text" name="unitPrice"  maxlength="10"></td>
  </tr>
   <tr>
    <td>Taxable:</td>
    <td><cfinput type="text" name="taxable"  maxlength="1"></td>
  </tr>
</table>

<cfinput name="button" type="submit" value="add item">

</cfform>


</body>
</html>