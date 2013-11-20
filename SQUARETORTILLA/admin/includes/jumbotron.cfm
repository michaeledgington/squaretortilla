<header class="jumbotron subhead" id="overview">
  <div class="container">
    <h2>Hello, <cfoutput>#session.userName#</cfoutput>!</h2>
    <p><cfoutput>#session.userCompany#</cfoutput>, <cfif #session.admin_type# eq 0><strong><cfoutput>#session.branch#</cfoutput></strong> branch admin.</cfif></p>
   <!---  <p><cfoutput>#session.userMasterId#</cfoutput> <cfoutput>#session.userID#</cfoutput> <cfoutput>#session.userMasterKeyword#</cfoutput></p> --->
  </div>
</header>
<div class="container"> 