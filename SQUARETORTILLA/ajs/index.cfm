<!DOCTYPE html>
<html lang="en" ng-app="app">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="./docs-assets/ico/favicon.png">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,300,700' rel='stylesheet' type='text/css'>
    
    <script src="./dist/js/angular.min.js"></script>
    <script src="./dist/js/myapp.js"></script>
	<script src="./dist/js/ng-table.js"></script>

    <title>AJS</title>

    <!-- Bootstrap core CSS -->
    <link href="./dist/css/bootstrap.css" rel="stylesheet">
	<link href="./dist/css/ng-table.css" rel="stylesheet">
    <link href="./dist/fonts/style.css" rel="stylesheet">
    <link href="./dist/css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="./docs-assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

   <!-- Wrap all page content here -->
    <div class="wrap">
        
          <!-- Fixed navbar -->
      <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="whitefont" data-icon="&#xe2af;"></span>
            
            </button>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			&nbsp;&nbsp;
			 </button>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="whitefont" data-icon="&#xe14b;"></span>
			 </button>
            <a class="navbar-brand" href="#"><span class="whitefont" data-icon="&#xe001;"></span></a>
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


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="./dist/js/bootstrap.min.js"></script>
	
	
    <script src="./dist/js/bootstrap-datetimepicker.min.js"></script>
	
<script src="./dist/js/bootstrap.file-input.js"></script>
<script>$(document).ready(function(){$('input[type=file]').bootstrapFileInput();});</script>


 <cfajaxproxy cfc="cfc.lineitems" jsclassname="lineitem_cfc">
  </body>
</html>
