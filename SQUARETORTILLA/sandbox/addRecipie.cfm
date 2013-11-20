<cfif IsDefined("form.recName")>
  <cfinvoke 
 component="cfc.addRecipie"
 method="addRecipie">
  <cfinvokeargument name="formData" value="#form#"/>
  </cfinvoke>
</cfif>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Marketing Info</title>
<link href="../css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>

<body>


<div class="container-fluid">
  <div class="row-fluid">
    <div class="span6">

    </div>
    <div class="span6">
        <cfform preservedata="no">
          
  <table>
    <tr>
      <td>Recipie Name: </td>
      <td><cfinput type="text" name="recName" validateat="onSubmit" required="yes" id="recName"></td>
    </tr>
    <tr>
      <td>Description: </td>
      <td><cfinput type="text" name="recDescript" validateat="onSubmit" required="yes" id="recDescript" height="200"></td>
    </tr>
    <tr>
      <td>Ingredients: </td>
      <td><cfinput type="text" name="recIngred" validateat="onSubmit"  required="yes" id="recIngred" height="200"></td>
    </tr>
    <tr>
      <td><cfinput type="submit" name="Submit" value="Submit"></td>
      <td>&nbsp;</td>
    </tr>
    
  </table>
</cfform>
<cfif IsDefined("form.recName")>
  <CFFILE action="read" file="http://squaretortilla.com/mob/welcome-email.html"
                    variable="emailTextBody">
                    
  <CFSET emailTextBody =REReplace(emailTextBody, "{name}", form.recName , 'all') />
  <CFSET emailTextBody =REReplace(emailTextBody, "{description}", form.recDescript , 'all') />
   <CFSET emailTextBody =REReplace(emailTextBody, "{ingredients}", form.recIngred , 'all') />
  
      <cfmail  to="michaeledgington@gmail.com"
            from="NewRecipie@squaretortilla.com"
            subject="New Recipie #form.recName#" type="html">
        Marketing Order #emailTextBody# 
     
      </cfmail>
  

</cfif>
<cfdump var="#form#" label="form scope">
    </div>
  </div>
</div>



</body>
</html>