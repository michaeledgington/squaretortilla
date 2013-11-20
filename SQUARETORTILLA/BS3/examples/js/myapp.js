
//start define pages
var app = angular.module("app", []).config(function($routeProvider) {
	$routeProvider.when('/login', {
		templateUrl: 'login.cfm',
		controller: 'LoginController'
	});
	$routeProvider.when('/home', {
		templateUrl: 'home.cfm',
		controller:'HomeController'
	});
	$routeProvider.when('/gallery', {
		templateUrl: 'gallery.cfm',
		controller:'galleryController'
	});
	
	$routeProvider.otherwise({redirectTo : '/login'});
});
//end define pages

//login logout service
app.factory("AuthenticationService", [ '$location', function($location) {
	return {
		login: function(credentials) {
			if(credentials.username === "ralph") {
				$location.path('/home');
			}
		},
		logout: function() {
			$location.path('/login');
			}
		};
}]);
// end login logout service


// start login page
app.controller('LoginController', ['$scope', 'AuthenticationService', function($scope, AuthenticationService) {
	$scope.credentials = { username: "", password: ""};
	$scope.login = function() {
		AuthenticationService.login($scope.credentials);
	};
	
}]);
//end login page


//start home page
app.controller('HomeController', ['$scope', 'AuthenticationService',  function($scope, AuthenticationService) {
	
	var user_data = new lineitem_cfc();
	$scope.users_table = user_data.user_names();
	//var json_return = $scope.users_table;
	//$scope.json_return = ColdFusion.JSON.encode($scope.users_table);
	//alert(json_return);
	//$scope.json_users = json_return;
	//alert(json_users);
	
	
	$scope.message = "Mouse over images for more info";
	$scope.logout = function() {
		AuthenticationService.logout();
	};
	
	
	
	
}]);

//start gallery page
app.controller('galleryController', ['$scope', function($scope) {
	
	
}]);

// start hover to show messgae
app.directive('showsMessageWhenHovered', function() {
	return {
		restrict: "A", // A = Attribute, C = Class Name, E = Element, M = HTML Comment
		link: function(scope, element, attributes) {
			var originalMessage = scope.message;
			element.bind("mouseover", function() {
				scope.message = attributes.message;
				scope.$apply(); 
			});
			element.bind("mouseout", function() {
				scope.message = originalMessage;
				scope.$apply();
			});
		}
	}
});
//end hover to show message
//end homepage
