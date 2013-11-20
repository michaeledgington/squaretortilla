<cfcomponent displayName="TestService" hints="I am a Test Service for an AngularJS Article">
 <cffunction name="sum" returnformat="plain" access="remote" output="true" hint="I am a Sample CFC" >    
  <cfargument name="num1" type="numeric" required="true"  />         
  <cfargument name="num2" type="numeric" required="true"  />         
  <cfreturn arguments.num1 + arguments.num2 />
 </cffunction>
</cfcomponent>