
 

<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> 
	
           <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#"><img src="https://mobilityre.com/portal/admin/assets/img/MobilityRE-LogoGREY.png" style="height: 18px;" alt="logo" /></a>
          <div class="nav-collapse collapse">
          
          <cfif attributes.includeblacknav >
          
            <ul class="nav">
				<li class=""> <a href="loadminportal.cfm">Add New Loan Officer or Agent</a> </li>
          	<li class=""> <a href="lo_search_single.cfm">View LO's</a> </li>
		<li class=""> <a href="agent_roster.cfm">View RE Agents</a> </li>
          	<li class=""><a href="lo_search.cfm" target="_parent">Reporting</a></li>
          	<li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Request History <span class="caret"></span> </a>
          	              <ul class="dropdown-menu">
          	<li class=""> <a href="admin_created_los.cfm">View Loan Officers</a> </li>
          	<li class=""> <a href="admin_created_agents.cfm">View Agents</a> </li>
          	               
          	               
          	              </ul>
          	            </li>
					
          	 <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Help <span class="caret"></span> </a>
          	              <ul class="dropdown-menu">
          	<li class=""> <a href="#">Your Rep: <strong><cfoutput>#session.repFirst# #session.repLast#</cfoutput></strong></a> </li>
        <li class=""> <a href="mailto:<cfoutput>#session.salesRep#</cfoutput>" target:"_blank">Email: <cfoutput>#session.salesRep#</cfoutput></a> </li>  	
		<li class=""> <a href="#">Office: 855.858.0590</a> </li>
		
          	               
          	               
          	              </ul>
          	            </li>
				<!--- <li class=""> <a href="admin_created_agents.cfm">View Current Agents</a> </li> --->
				
              <li class="">
                <a href="login.cfm?logout=" target="_parent">Logout</a>
              </li>
          
              
              
            </ul>
            
            </cfif>
          </div> 
    </div>
  </div>
</div>