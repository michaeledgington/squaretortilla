<!doctype html>
<html ng-app="Demo">
<head>
	<meta charset="utf-8" />
	<title>Applying A Cached Response To An AngularJS Resource</title>
</head>
<body ng-controller="ListController">

	<h1>
		Applying A Cached Response To An AngularJS Resource
	</h1>

	<p>
		You have {{ friends.length }} friend(s).
	</p>

	<ul>
		<li ng-repeat="friend in friends">
			{{ friend.state }} : {{ friend.lat }}
		</li>
	</ul>


	<!--Load AngularJS and the Resource module. -->
	<script type="text/javascript" src="./dist/js/angular.min.js"></script>
	<script type="text/javascript" src="./dist/js/angular.resource.min.js"></script>
	<script type="text/javascript">


		// Create an application module for our demo.
		var Demo = angular.module( "Demo", [ "ngResource" ] );


		// -------------------------------------------------- //
		// -------------------------------------------------- //


		// I control the demo UI.
		Demo.controller(
			"ListController",
			function( $scope, friendService ) {

				// Get the list of friends from the server. This
				// returns an AngularJS resource which can be injected
				// directly into the scope.
				$scope.friends = friendService.query();

			}
		);


		// -------------------------------------------------- //
		// -------------------------------------------------- //


		// I provide the access to the API.
		Demo.service(
			"friendService",
			function( $resource, applyCacheToResource ) {

				// Define our AngularJS resource (which makes the
				// HTTP requests to our server for us).
				var resource = $resource( "api.cfm" );

				// Imagine that we have some locally cached data that
				// we've stored from a previous request.
				var cachedResponse = [
					{
						
						state: "Joanna"
					}
				];


				// Provide an API for the controllers.
				this.query = function() {

					// Get the resource reference (at this point,
					// it is an empty array or object reference).
					var results = resource.query();

					// Before we return the resource, let's inject
					// our own cache. Since the Resource *always*
					// updates on the next "tick", we know that we
					// are not going to corrupt the true response
					// from the server.
					return(
						applyCacheToResource( results, cachedResponse )
					);

				};

			}
		);


		// -------------------------------------------------- //
		// -------------------------------------------------- //


		// I apply a cached response to an existing resource without
		// breaking the original resource reference.
		Demo.value(
			"applyCacheToResource",
			function( resource, cache ) {

				// Check to see what type of value we're dealing with.
				// If it's an array, we want to splice-in the cache;
				// if it's an object, we want to extend the keys.
				if ( angular.isArray( resource ) ) {

					resource.splice.apply(
						resource,
						[ 0, 0 ].concat( cache )
					);

				} else {

					angular.extend( resource, cache );

				}

				// Return the updated resource (for easy of use).
				return( resource );

			}
		);


	</script>

</body>
</html>