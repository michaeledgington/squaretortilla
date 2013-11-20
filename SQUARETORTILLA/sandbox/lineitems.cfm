<cfsetting showdebugoutput="no">
<cfparam name="attributes.pagetitle" default="Line Items">
<cfinvoke 
 component="cfc.lineitems"
 method="lineItems"
 returnvariable="qlineitems">
</cfinvoke>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>



<table border="1">
  <tr>
 <td>&nbsp;</td>
    <td>itemId</td>
    <td>name</td>
    <td>description</td>
    <td>quantity</td>
    <td>unitPrice</td>
    <td>Edit</td>
    <td>taxable</td>
     
  </tr>
  <cfoutput query="qlineitems" >
    <tr>
<td>#qlineitems.id#</td>
      <td>#qlineitems.itemId#</td>
      <td>#qlineitems.name#</td>
      <td>#qlineitems.description#</td>
      <td>#qlineitems.quantity#</td>
      <td>#qlineitems.unitPrice#</td>
      <td><a href="updatelineitems.cfm?passed_itemid=#qlineitems.id#">Edit</a></td>
      <td>#qlineitems.taxable#</td>
  
    </tr>
  </cfoutput>
</table>


</body>
</html>