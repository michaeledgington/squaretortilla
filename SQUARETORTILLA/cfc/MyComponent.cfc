<cfcomponent>
	<cffunction name="myFunction" access="public" returntype="string">
		<cfargument name="myArgument" type="string" required="yes">
		<cfset myResult="whoFoo">
		<cfreturn myResult>
	</cffunction>
</cfcomponent>