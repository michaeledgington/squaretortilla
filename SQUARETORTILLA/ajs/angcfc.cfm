<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
 <script src="./dist/js/angular.min.js"></script>
  
	<script>
	function MainCntrl($scope) {
	var kaar_data = new ArtistJS();
	$scope.artist = kaar_data.user_names();
	alert(ColdFusion.JSON.encode($scope.artist));
		}
	</script>
 <cfajaxproxy cfc="cfc.lineitems" jsclassname="ArtistJS">
<!--- <cfinvoke component="cfc.lineitems" method="ARTIST" returnVariable="kaar_geo"> --->
</head>

<body ng-controller="MainCntrl">
body text here
 <table >
			<tr>
				<th>MLS City</th>
				<th>State</th>
				<th>Long</th>
			</tr>
			<tr ng-repeat="users in artist">
				<td>{{users.id}}</td>
				<td>{{users.first_name}}</td>
				<td>{{users.last_name}}</td>
			<tr>
		</table>

<!--- <cfdump var="#kaar_geo#"> --->


</body>
</html>