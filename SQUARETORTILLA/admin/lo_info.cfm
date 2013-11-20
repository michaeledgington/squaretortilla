
<cfset variables.pagetitle="LO Admin">
<cfsetting showdebugoutput="no">


<cfset loid = '#form.lo_firstname#'>

<cfif IsDefined("form.lo_update")>
	
				<cfset loid = '#form.lo_firstname#'>
				
				<cfquery datasource="spotlight" name="lo_data">
			    SELECT brokerageDesc, brokerageClientId, brokerageID, brokerageName, brokerageContactPhone, brokerageContactEmail,brokerageMLS, masterBrokerageId, nmls, lo_office
			    FROM brokerages
				WHERE brokerageDesc = '#loid#'
			  	
			
			</cfquery>
			
			
			<cfquery datasource="spotlight" name="lo_agents">
			    SELECT keyword, 'brokerageid_fk', firstname, lastname, phone, notifycarrier, email, personalMsg, MLSArea, searchStates, createdOn
			    FROM lonewolf_keywords
				WHERE brokerageid_fk = '#lo_data.brokerageID#'
				ORDER by createdOn DESC
			  	
			
			</cfquery>
			
			<cfquery datasource="spotlight" name="lo_mastername">
			    SELECT BrokerageName,username
			    FROM spotlight.masterbrokerage
				WHERE id = '#lo_data.masterBrokerageId#'
			  	
			
			</cfquery>
	
	
  			<cfquery name="have_item" datasource="spotlight" >
               UPDATE brokerages SET 
               lo_office=<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.lo_office#" />
               
                    
               WHERE brokerageID = '#lo_data.brokerageID#'
            </cfquery>
			
 
  <cfelse>


		<cfquery datasource="spotlight" name="lo_data">
		    SELECT brokerageDesc, brokerageClientId, brokerageID, brokerageName, brokerageContactPhone, brokerageContactEmail,brokerageMLS, masterBrokerageId, nmls, lo_office
		    FROM brokerages
			WHERE brokerageDesc = '#loid#'
		  	
		
		</cfquery>
		
		
		<cfquery datasource="spotlight" name="lo_agents">
		    SELECT keyword, 'brokerageid_fk', firstname, lastname, phone, notifycarrier, email, personalMsg, MLSArea, searchStates, createdOn
		    FROM lonewolf_keywords
			WHERE brokerageid_fk = '#lo_data.brokerageID#'
			ORDER by createdOn DESC
		  	
		
		</cfquery>
		
		<cfquery datasource="spotlight" name="lo_mastername">
		    SELECT BrokerageName,username
		    FROM spotlight.masterbrokerage
			WHERE id = '#lo_data.masterBrokerageId#'
		  	
		
		</cfquery>
		
		


</cfif>




<cfinclude template="includes/header.cfm">



<body data-spy="scroll" data-target=".bs-docs-sidebar">

<!-- Navbar
    ================================================== -->
<cfinclude template="includes/blacknav.cfm">

<!-- Subhead
================================================== -->

<div class="container">

<!------------------------------------------ END SECTION ------------------------------------------>

<h3>LO Info For <cfoutput>#lo_data.brokerageDesc#</cfoutput> Including attached Agent Keywords (<cfoutput>#lo_agents.recordcount#</cfoutput>)</h3>
<form name="lo_info" method="post" action="" class="form-search">
	<input name="lo_firstname" value="<cfoutput>#lo_data.brokerageDesc#</cfoutput>" type="hidden">
 <table class="table table-borderd table-striped form-search">
	<thead>
 	<tr>
		<th>Name</th>
		<th>Keyword</th>
		<th>Brk ID</th>
		<th>Company </th>
		<th>NMLS</th>
		<th>LO Phone</th>
		<th>LO Email</th>
		<th>Master</th>
		<th>Office</th>
		<th>Edit</th>
 	</tr>
	</thead>
	<tr>
		<cfoutput><td>#lo_data.brokerageDesc#</td>
		<td>#UCase(lo_data.brokerageClientId)#</td>
		<td>#lo_data.brokerageID#</td>
		<td>#lo_data.brokerageName#</td>
		<td>#lo_data.nmls#</td>
		<td>#lo_data.brokerageContactPhone#</td>
		<td>#lo_data.brokerageContactEmail#</td>
		<td>#lo_mastername.username#</td>
		<td><input type="text" name="lo_office" value="#lo_data.lo_office#"></td>
		<td><button name="lo_update" type="submit" class="btn">Update</button></td>
		</cfoutput>
 	</tr>
 </table>
</form>
<h3>Agent roster For <cfoutput>#lo_data.brokerageDesc#</cfoutput></h3>

 <table class="table table-striped table-bordered dataTable" id="lo_display" aria-describedby="example_info">
	<thead>
 	<tr>
		<th>Name</th>
		<th>Keyword</th>
		<th>Brokerage</th>
		<th>MLS Boards</th>
		<th>Phone</th>
		
		<th>Email</th>
		<th>State</th>
		<th>Created date</th>
 	</tr>
	</thead>
	<cfloop query= "lo_agents"> 
	<tr>
		<cfoutput>
		
		<td>#lo_agents.firstname# #lo_agents.lastname#</td>
		<td>#UCase(lo_agents.keyword)#</td>
		<td>#lo_agents.personalMsg#</td>
		<td>#UCase(lo_agents.MLSArea)#</td>
		<td>#lo_agents.phone#</td>
		
		<td>#lo_agents.email#</td>
		<td>#lo_agents.searchStates#</td>
		<td>#dateformat(lo_agents.createdOn, 'mm/dd/yyyy')#</td>
		
		</cfoutput>
 	</tr>
</cfloop>
 </table>
	

	


<!------------------------------------------ END SECTION ------------------------------------------>


</div>

<!-- Footer
    ================================================== -->
<footer class="footer">
  <div class="container">
    <p class="pull-right"><a href="#">Back to top</a></p>
  </div>
</footer>

<!-- Le javascript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<cfinclude template="includes/bsscripts.cfm">
</body>
</html>
