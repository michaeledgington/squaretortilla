<cfif IsDefined("form.cardname")>
  <cfinvoke 
 component="cfc.marketinginfo"
 method="cardinfo">
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
    <div class="span10">
 <img src="http://squaretortilla.com/img/samplecard.png" width="783" height="694" />
    </div>
    <div class="span2">
        <cfform preservedata="no">
          
  <table>
    <tr>
      <td>Name</td>
      <td><cfinput type="text" name="cardname" validateat="onSubmit" required="yes" id="cardname"></td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><cfinput type="text" name="phone" validateat="onSubmit" required="yes" id="phone"></td>
    </tr>
    <tr>
      <td>email</td>
      <td><cfinput type="text" name="email" validateat="onSubmit" validate="email" required="yes" id="email"></td>
    </tr>
    <tr>
      <td>Keyword</td>
      <td><cfinput type="text" name="keyword" id="keyword"></td>
    </tr>
    <tr>
      <td>Brokerage Name</td>
      <td><cfinput type="text" name="brokeragename" id="brokeragename"></td>
    </tr>
    <tr>
      <td>House Style</td>
      <td><cfselect name="housestyle" id="housestyle">
        <option value="north">north</option>
        <option value="south">south</option>
        <option value="coastal">coastal</option>
        </cfselect></td>
    </tr>
    <tr>
      <td>Theme Color</td>
      <td><cfselect name="themecolor" id="themecolor">
        <option value="red/blue">red/blue</option>
        <option value="black/white">black/white</option>
        </cfselect></td>
    </tr>
    <tr>
      <td><cfinput type="submit" name="Submit" value="Submit"></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</cfform>
<cfif IsDefined("form.cardname")>
  <CFFILE action="read" file="http://squaretortilla.com/mob/welcome-email.html"
                    variable="emailTextBody">
                    
  <CFSET emailTextBody =REReplace(emailTextBody, "{namepop}", form.cardname , 'all') />
  
      <cfmail  to="michaeledgington@gmail.com"
            from="orders@squaretortilla.com"
            subject="Card Order" type="html">
        Marketing Order #emailTextBody# 
     
      </cfmail>
  

</cfif>
<cfdump var="#form#" label="form scope">
    </div>
  </div>
</div>



</body>
</html>