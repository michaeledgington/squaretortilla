<cfcomponent>
	<cffunction name="cardinfo" access="public" returntype="void">
          <cfargument name="formData" type="struct" required="yes">
          <cfquery datasource="photogallerydb">
                   
                   INSERT INTO cardinfo
                   ( brokeragename, cardname, email, keyword, housestyle, phone, themecolor)
                   VALUES
                   ('#formData.brokeragename#', '#formData.cardname#', '#formData.email#', '#formData.keyword#',  '#formData.housestyle#', '#formData.phone#', '#formData.themecolor#')
                    
                    
                    </cfquery>
        </cffunction>
</cfcomponent>