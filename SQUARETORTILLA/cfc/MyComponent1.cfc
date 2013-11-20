<cfcomponent>
	<cffunction name="getPhotographers" access="public" returntype="query">
		
        <cfquery name="qphotographer" datasource="photogallerydb">
        
		SELECT Photographerid, firstname, lastname, featured
        FROM photographer
        ORDER BY lastname ASC
        
        </cfquery>
        
		<cfreturn qphotographer>
        
	</cffunction>
    
    <cffunction name="getAllPhotos" access="public" returntype="query">
    
    	<cfquery name="qphotos" datasource="photogallerydb">
        SELECT photoid, filename, photograherid, caption, price
        FROM photo
        ORDER BY price ASC
        </cfquery>
        
        <cfreturn qphotos>
        
        </cffunction>
        
        <cffunction name="getPhotograherByid" access="public" returntype="string">
        <cfargument name="photographerid" type="numeric" required="yes">
        
        <cfquery name="qphotographer" datasource="photogallerydb">
        
		SELECT Photographerid, firstname, lastname, featured
        FROM photographer
        WHERE photograherid = #arguments.photograherid#
        </cfquery>
        
        <cfreturn qphotographer.firstname & " " & qphotographer.lastname>
        
        </cffunction>
        
</cfcomponent>