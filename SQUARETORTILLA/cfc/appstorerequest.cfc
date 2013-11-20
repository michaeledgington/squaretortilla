<cfcomponent>
		



		<cffunction name="webapprequest" access="public" returntype="void">
  			<cfargument name="formData" type="struct" required="yes">
  					<cfquery datasource="square">
                   
                   INSERT INTO marketingproofs
                   (requesttype, cardkeyword, cardinstructions, cardsalesemail, cardreviewemail)
                   VALUES
                   ('#formData.requesttype#', '#formData.cardkeyword#', '#formData.cardinstructions#', '#formData.cardsalesemail#',  '#formData.cardreviewemail#')
                    
                    
                    </cfquery>
		</cffunction>
        
        
        
</cfcomponent>