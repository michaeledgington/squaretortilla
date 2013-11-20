<cfcomponent>
<cffunction name="getSubdomain" access="public" returntype="query">

      <cfquery datasource="mustache" name="qkeysAndSubs">
        SELECT keyword, subdomain
        FROM lonewolf_keywords
        ORDER BY keyword ASC
     
        </cfquery>
<cfreturn qkeysAndSubs>
 
</cffunction>

<cffunction name="getKeyword" access="public" returntype="any">
	<cfargument name="keyword" type="any" required="yes">
    
        <cfquery datasource="mustache" name="qkeysAndSubs">
        SELECT keyword, subdomain
        FROM lonewolf_keywords
        WHERE keyword = '#arguments.keyword#'
        </cfquery>
        
        <cfreturn qkeysAndSubs.keyword & " " & qkeysAndSubs.subdomain>
        </cffunction>
</cfcomponent>