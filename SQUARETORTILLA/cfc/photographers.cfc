<cfcomponent>
	<cffunction name="getAllPhotographers" access="public" returntype="query">
		
        
        <cfquery name="qphotographers" datasource="photogallerydb" username="root" password="spot_light10">
        
        SELECT *
        FROM photographer 
        </cfquery>
        
        
		<cfreturn qphotographers>
	</cffunction>
</cfcomponent>