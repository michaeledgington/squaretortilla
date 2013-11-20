<cfcomponent>
	<cffunction name="adduser" access="public" returntype="void">
  <cfargument name="formData" type="struct" required="yes">
  <cfquery datasource="square">
           
           INSERT INTO users
           (firstname, lastname, email, phone, carrier)
           VALUES
           ('#formData.firstname#', '#formData.lastname#', '#formData.email#', #formData.phone#, '#formData.carrier#')
            
            
            </cfquery>
</cffunction>
</cfcomponent>