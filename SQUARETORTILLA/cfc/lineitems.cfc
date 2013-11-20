<cfcomponent>
<cffunction name="lineItems" access="public" returntype="query">
  <cfquery name="qlineitems" datasource="photogallerydb" username="root" password="spot_light10">
            SELECT *
            FROM newitems
            
            </cfquery>
  <cfreturn qlineitems>
</cffunction>
<cffunction name="cf_cites" access="remote" output="false" returntype="string">
  <cfquery name="rs.q" datasource="square" username="root" password="spot_light10">
            SELECT *
            FROM kaar_city_geo
            
            </cfquery>
			<cfset rs.ac = createObject("component", "ArrayCollection").init() />
			<cfset rs.ac.setData( rs.q ) />
			<cfset rs.ac.setDataHandle(false) />
			<cfreturn rs.ac.$renderdata() />
  
</cffunction>
<cffunction name="addItem" access="public" returntype="void">
  <cfargument name="formData" type="struct" required="yes">
  <cfquery datasource="photogallerydb">
           
           INSERT INTO newitems
           (itemId, name, description, quantity, taxable, unitPrice)
           VALUES
           ('#formData.itemId#', '#formData.name#', '#formData.description#', #formData.quantity#, '#formData.taxable#', #formData.unitPrice#)
            
            
            </cfquery>
</cffunction>
<cffunction name="getitemidQuery" access="public" returntype="query">
  <cfargument name="passed_itemid" type="any" required="yes">
  <cfquery name="got_item" datasource="photogallerydb" username="root" password="spot_light10">
          
          
            SELECT *
            FROM newitems
            WHERE id = #arguments.passed_itemid#
            
            </cfquery>
  <cfreturn got_item>
</cffunction>
</cfcomponent>