<cfcomponent>

<cffunction name="getALLARTIST" access="public" returntype="query">
  <cfquery name="qlineitems" datasource="square" username="root" password="spot_light10">
            SELECT *
            FROM kaar_city_geo
            
            </cfquery>
  <cfreturn getALLARTIST>
</cffunction>

</cfcomponent>