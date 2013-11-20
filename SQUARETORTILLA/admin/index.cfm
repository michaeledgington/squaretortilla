<!DOCTYPE html>
<html lang="en" ng-app="app">
  <!DOCTYPE html>

<html lang="en">

<head>

<meta charset="utf-8">

<title>Index</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description" content="">

<meta name="author" content="">



<!-- Le styles -->

<link href="assets/css/bootstrap.css" rel="stylesheet">

<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

<link href="assets/css/docs.css" rel="stylesheet">
	
<link href="assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	

<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">



<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->

<!--[if lt IE 9]>

      <script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>

    <![endif]-->



<!-- Le fav and touch icons -->



<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">

<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">

<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">

<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">



<script src="assets/js/angular.min.js"></script>
<script src="assets/js/myapp.js"></script>
<script src="assets/js/ng-table.js"></script>



</head>

  <body>

   <!-- Wrap all page content here -->
    <div class="wrap">
        
          <!-- Fixed navbar -->
      
 

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
          
        
          
            <ul class="nav">
				<li class=""> <a href="#/home">Home</a> </li>
          	<li class=""> <a href="#/gallery">Gallery</a> </li>
		
              
              
            </ul>
        
          </div> 
    </div>
  </div>
</div>
		<div class="container">
		      <!-- Begin page content -->
		      <div ng-view></div>
        </div>
        
    </div>
    <footer class="footer">
  <div class="container">
    <p class="pull-right"><a href="#">Back to top</a></p>
  </div>
</footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   
	
    <!--- <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
	
<script src="assets/js/bootstrap.file-input.js"></script>
<script>$(document).ready(function(){$('input[type=file]').bootstrapFileInput();});</script> --->


 <cfajaxproxy cfc="cfc.lineitems" jsclassname="lineitem_cfc">
<script type="text/javascript" src="https://platform.twitter.com/widgets.js"></script> 
<script src="assets/js/jquery.js"></script> 
<script src="assets/js/google-code-prettify/prettify.js"></script> 
<script src="assets/js/bootstrap-transition.js"></script> 
<script src="assets/js/bootstrap-alert.js"></script> 
<script src="assets/js/bootstrap-modal.js"></script> 
<script src="assets/js/bootstrap-dropdown.js"></script> 
<script src="assets/js/bootstrap-scrollspy.js"></script> 
<script src="assets/js/bootstrap-tab.js"></script> 
<script src="assets/js/bootstrap-tooltip.js"></script> 
<script src="assets/js/bootstrap-popover.js"></script> 
<script src="assets/js/bootstrap-button.js"></script> 
<script src="assets/js/bootstrap-collapse.js"></script> 
<script src="assets/js/bootstrap-carousel.js"></script> 
<script src="assets/js/bootstrap-typeahead.js"></script> 
<script src="assets/js/bootstrap-affix.js"></script> 
<script src="assets/js/application.js"></script>
<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>

<script src="assets/js/bootstrap.file-input.js"></script>
<script>$(document).ready(function(){$('input[type=file]').bootstrapFileInput();});</script>
<!--- <script>$(document).ready(function() {
    $('#lo_display').dataTable( {
        "sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>"
    } );
} );
</script> --->
<script>$(document).ready(function() {
			    $('#branc_los').dataTable( {
			        "sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>"
			    } );
			} );
			</script>


<script>
	if (top.location != location) {
    top.location.href = document.location.href ;
  }
		$(function(){
			window.prettyPrint && prettyPrint();
			$('#dp1').datepicker({
				format: 'mm-dd-yyyy'
			});
			$('#dp2').datepicker();
			$('#dp3').datepicker();
			$('#dp3').datepicker();
			$('#dpYears').datepicker();
			$('#dpMonths').datepicker();
			
			
			var startDate = new Date(2012,1,20);
			var endDate = new Date(2012,1,25);
			$('#dp4').datepicker()
				.on('changeDate', function(ev){
					if (ev.date.valueOf() > endDate.valueOf()){
						$('#alert').show().find('strong').text('The start date can not be greater then the end date');
					} else {
						$('#alert').hide();
						startDate = new Date(ev.date);
						$('#startDate').text($('#dp4').data('date'));
					}
					$('#dp4').datepicker('hide');
				});
			$('#dp5').datepicker()
				.on('changeDate', function(ev){
					if (ev.date.valueOf() < startDate.valueOf()){
						$('#alert').show().find('strong').text('The end date can not be less then the start date');
					} else {
						$('#alert').hide();
						endDate = new Date(ev.date);
						$('#endDate').text($('#dp5').data('date'));
					}
					$('#dp5').datepicker('hide');
				});

        // disabling dates
        var nowTemp = new Date();
        var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

        var checkin = $('#dpd1').datepicker({
          onRender: function(date) {
            return date.valueOf() < now.valueOf() ? 'disabled' : '';
          }
        }).on('changeDate', function(ev) {
          if (ev.date.valueOf() > checkout.date.valueOf()) {
            var newDate = new Date(ev.date)
            newDate.setDate(newDate.getDate() + 1);
            checkout.setValue(newDate);
          }
          checkin.hide();
          $('#dpd2')[0].focus();
        }).data('datepicker');
        var checkout = $('#dpd2').datepicker({
          onRender: function(date) {
            return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
          }
        }).on('changeDate', function(ev) {
          checkout.hide();
        }).data('datepicker');
		});
	</script> 
  </body>
</html>
