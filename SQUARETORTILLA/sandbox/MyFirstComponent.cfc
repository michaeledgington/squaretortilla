<cfcomponent hint="my first component">

		<cfproperty name="myProp" type="string">
        
        <cfset this.myProp = "My propery value">

		<cffunction name="getValue" returntype="string">
			<cfreturn this.myProp >

		</cffunction>
	
</cfcomponent>