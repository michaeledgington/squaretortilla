<cfajaxproxy cfc="cfc.lineitems" jsclassname="lineitem_cfc">
<!DOCTYPE html>
<html lang="en" ng-app="app">
	<head>
	
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>My data</title>
		
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap.css">
		<script type="text/javascript" language="javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
		<script type="text/javascript" language="javascript" src="js/bootstrap.js"></script>
		
		
		
	    <link href="fonts/style.css" rel="stylesheet">
	    <link href="css/sticky-footer-navbar.css" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,300,700' rel='stylesheet' type='text/css'>
    	
	
		<script src="js/angular.min.js"></script>
    	<script src="js/myapp.js"></script>
	<script type="text/javascript" language="javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="js/dataTables.bootstrap.js"></script>
	</head>
	<body>
	
	
	<div class="wrap">
        
          <!-- Fixed navbar -->
      <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
          </div>
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#/home">Home</a></li>
              <li><a href="#/logout">Logout</a></li>
              <li><a href="#/gallery">Gallery</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>

      <!-- Begin page content -->
      <div ng-view></div>
        
		
        
    </div>
    <div id="footer">
      <div class="container">
        <p class="text-muted credit">Sticky Footer Text here <!--- <cfdump var="#kaar_geo#"> ---></p>
      </div>
    </div>
	
	
	
	
		
		
	
		
		
		
	</body>
</html>