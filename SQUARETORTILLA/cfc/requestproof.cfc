<cfcomponent>
		<cffunction name="cardrequest" access="public" returntype="void">
  			<cfargument name="formData" type="struct" required="yes">
  					<cfquery datasource="square">
                   
                   INSERT INTO marketingproofs
                   (requesttype, cardname, cardphone, housestyle, brokeragename, cardkeyword, cardemail, cardthemecolor, cardinstructions, cardsalesemail, cardreviewemail)
                   VALUES
                   ('#formData.requesttype#', '#formData.cardname#', '#formData.cardphone#', '#formData.housestyle#', '#formData.brokeragename#', '#formData.cardkeyword#', '#formData.cardemail#', '#formData.cardthemecolor#', '#formData.cardinstructions#', '#formData.cardsalesemail#',  '#formData.cardreviewemail#')
                    
                    
                    </cfquery>
		</cffunction>


		<cffunction name="riderrequest" access="public" returntype="void">
  			<cfargument name="formData" type="struct" required="yes">
  					<cfquery datasource="square">
                   
                   INSERT INTO marketingproofs
                   (requesttype, cardkeyword, cardthemecolor, cardinstructions, cardsalesemail, cardreviewemail)
                   VALUES
                   ('#formData.requesttype#', '#formData.cardkeyword#', '#formData.cardthemecolor#', '#formData.cardinstructions#', '#formData.cardsalesemail#',  '#formData.cardreviewemail#')
                    
                    
                    </cfquery>
		</cffunction>



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