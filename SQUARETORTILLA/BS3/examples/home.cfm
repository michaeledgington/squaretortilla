<div class="container">

      	<p>&nbsp;</p>
		<p>&nbsp;</p>
       	<h2>{{message}}</h2>
		<div class="row">
		  <div class="col-xs-6 "><img src="http://armls.rets.mobilityre.com.s3.amazonaws.com/4990226/1.jpg"
				alt="PIC" class="img-thumbnail" shows-message-when-hovered message="Im picture 1"></div>
		  <div class="col-xs-6 "><img src="http://armls.rets.mobilityre.com.s3.amazonaws.com/4990226/1.jpg"
				alt="PIC" class="img-thumbnail" shows-message-when-hovered message="Im picture 2"></div>
		<div id="wrap">

			<div class="container">
			<p>Here is some text</p>
		<!--- <script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#city_data').dataTable();
			} );
		</script> --->
		<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="city_data">

			<tr>
				<th>MLS City</th>
				<th>State</th>

			</tr>
			<tr ng-repeat="column in users_table">
				<td>{{column.city_mls}}</td>
				<td>{{column.state}}</td>
			<tr>
		</table>

		</div>
		</div>
	    <div class="row">
		<div class="col-xs-12">
	      <p><button type="submit" class="btn btn-default" ng-click="logout()">Sign out</button></p>
		</div>
	    </div>


      </div>