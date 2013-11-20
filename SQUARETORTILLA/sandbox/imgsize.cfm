<!---<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>
</head>
<body>
    <table border="0" cellpadding="0" cellspacing="1" width="500" align="center">
    <cfform action="picture_add.cfm" name="AddPic" method="post" enctype="multipart/form-data">
        <tr>
            <td align="right" class="Copy" valign="top">Photo:</td>
            <td align="left" class="Copy" valign="top">
                <cfinput type="file" name="PICTURE" required="no">
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="left">
                <cfinput type="submit" name="Submit" value="Submit">
            </td>
        </tr>
        </cfform>
    </table>
</body>
</html>--->

<html>
   <head>
      <title>Scaling Images</title>
   </head>
   <body>
   <cfif not isDefined("FORM.imageFile")>
      <form action="imgsize.cfm" method="post" enctype="multipart/form-data">
         <input type="file" name="imageFile" /><br />
         <input type="submit" value="PROCESS IMAGE" />
      </form>
   <cfelse>
      <cfset myfilepath= "C:/Program Files/Apache Software Foundation/Apache2.2/htdocs/squaretortilla/photouploads/"( "C:/Program Files/Apache Software Foundation/Apache2.2/htdocs/squaretortilla/resizedphotos/"() ) >
      <cffile action="upload" 
                  filefield="imageFile" 
                  destination="#myfilepath#Images" 
                  nameconflict="overwrite">
      <cfset uploadedImage = cffile.serverfile>
      <!--- Invoke image.cfc component --->
      <cfset imageCFC = createObject("component","image") />
      <!--- scaleX image to 150px wide --->
      <cfset scaleX150 = imageCFC.scaleX("", "#myfilepath#\Images\#uploadedImage#", "#myfilepath#\Images\_scaleX_150_#uploadedImage#", 150)>
   </cfif>
   </body>
</html>



