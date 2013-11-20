<cfparam name="Error" default="">

<cfif Picture neq "">
    <cftry>
        <cffile 
            action="upload" 
            filefield="Picture" 
            destination=" C:/Program Files/Apache Software Foundation/Apache2.2/htdocs/squaretortilla/photouploads" 
             
            nameconflict="makeunique">

        <cfimage
            action = "info"
            source = " C:/Program Files/Apache Software Foundation/Apache2.2/htdocs/squaretortilla/photouploads/#serverfile#"
            structname = "Picturetest">
        
        <cfoutput>
            <cfset Picturewidth =  #Picturetest.width#>
            <cfset Pictureheight =  #Picturetest.height#>
            <cfset PictureSmallwidth = 150>
            <cfset PictureSmallHeight = #Pictureheight# / #Picturewidth# * #PictureSmallwidth#>
        </cfoutput>

        <cfimage action = "resize"
            height = "#Round(PictureSmallHeight)#"
            width="150"
            source = "C:/Program Files/Apache Software Foundation/Apache2.2/htdocs/squaretortilla/photouploads/#serverfile#"
            destination = "C:/Program Files/Apache Software Foundation/Apache2.2/htdocs/squaretortilla/resizedphotos/#serverfile#"
            overwrite = "yes">

    <cfcatch type="any">
        <cfset Error = "1">
    </cfcatch>
    </cftry>
</cfif>

<cfif ERROR eq 1>
    <script language="Javascript">
    alert ("Corrupt or invalid file type. .:Only jpg files accepted:.")
    </script>
        
<cfelse>
    <cfquery name="INSERTPRODUCT" datasource="square">
        INSERT INTO photos
        (PICTURE)
        VALUES
        ('#SERVERFILE#')
    </cfquery>
    <script language="Javascript">
	    alert ("Your picture has been uploaded.")
    </script>
    <cflocation url="index.cfm">
</cfif>

