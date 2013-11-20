


<cfquery datasource="mustache" name="qkeysAndSubs">
SELECT keyword, subdomain
FROM lonewolf_keywords
ORDER BY keyword ASC
</cfquery>


<cfinclude template="includes/header.cfm">

<script type="text/javascript" src="http://squaretortilla.com/ckeditor/ckeditor.js"></script>

<body data-spy="scroll" data-target=".bs-docs-sidebar">

<!-- Navbar
    ================================================== -->
<cfinclude template="includes/blacknav.cfm">

<!-- Subhead
================================================== -->
<header class="jumbotron subhead" id="overview">
  <div class="container">
    <h1>Proof Request</h1>
    <p class="lead">Closing juice!</p>
  </div>
</header>
<div class="container">

<!-- Docs nav
    ================================================== -->
<div class="row">
<div class="span3 bs-docs-sidebar">
  <ul class="nav nav-list bs-docs-sidenav">
    <li><a href="#subdo"><i class="icon-chevron-right"></i>Sub Domain Finder</a></li>
    
  </ul>
</div>
<div class="span9">

<!------------------------------------------ START SECTION ------------------------------------------>
<section id="subdo">
  <div class="page-header">
    <h1>Find Keyword Subdomain</h1>
  </div>
  <cfdump var="#qkeysAndSubs#">
  <div class="row-fluid">
    <input id="enterKeyword" placeholder="Enter Keyword">
    
    <iframe width="640" height="540" frameborder="0" src="http://de.mobre.net/mob/" scrolling="no"></iframe>
    
  </div>
</section>

<!------------------------------------------ END SECTION ------------------------------------------>
</div>
</div>

<!-- Footer
    ================================================== -->
<footer class="footer">
  <div class="row-fluid">
    <p class="pull-right"><a href="#">Back to top</a></p>
  </div>
</footer>


<!-- Le javascript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<cfinclude template="includes/bsscripts.cfm">
</body>
</html>
