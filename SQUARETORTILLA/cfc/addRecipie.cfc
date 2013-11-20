<cfcomponent>
	<cffunction name="addRecipie" access="public" returntype="void">
          <cfargument name="formData" type="struct" required="yes">
          <cfquery datasource="square">
                   
                   INSERT INTO recipies
                   (recName , recDescript, recIngred)
                   VALUES
                   ('#formData.recName#', '#formData.recDescript#', '#formData.recIngred#')
                    
                    
                    </cfquery>
        </cffunction>
</cfcomponent>