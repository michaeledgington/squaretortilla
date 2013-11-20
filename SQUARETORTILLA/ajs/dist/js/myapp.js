
//start define pages
var app = angular.module("app", ['ngTable']).config(function($routeProvider) {
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


app.factory('getCites', function($q, $timeout) {
	  
    var city_data = function() {
      var deferred = $q.defer();
      
      var user_data = new lineitem_cfc();
	  	city_list = user_data.cf_cites();
  	
  	var cf_data = ColdFusion.JSON.encode(city_list);
  	data = cf_data;
  
      $timeout(function() {
        deferred.resolve(data);
      }, 10);
  
      return deferred.promise;
    };
    
    return {
      city_data: city_data
    };
  
  })






// start login page
app.controller('LoginController', ['$scope', 'AuthenticationService', function($scope, AuthenticationService) {
	$scope.credentials = { username: "", password: ""};
	$scope.login = function() {
		AuthenticationService.login($scope.credentials);
	};
	
}]);
//end login page


//start home page
app.controller('HomeController',    function($scope, AuthenticationService, $filter, ngTableParams, getCites) {
	
	$scope.message = "Mouse over images for more info";
	$scope.logout = function() {
		AuthenticationService.logout();
	};
	
	$scope.mq_bg_img = "http://s3.amazonaws.com/images.tx2me.com/60751C15-C80B-48A3-89C79E5DD6EEDF8E-custombackground-background.png";
	$scope.mq_logo_img = "http://s3.amazonaws.com/images.tx2me.com/60751C15-C80B-48A3-89C79E5DD6EEDF8E-customlogo-logo.png";
	
	
	
	
	
	
	 
	
});

//start gallery page
app.controller('galleryController', ['$scope', 'getCites', '$http', function($scope, getCites, $http) {
	
	var user_data = new lineitem_cfc();
  	city_list = user_data.cf_cites();
  	//alert(ColdFusion.JSON.encode(city_list));
	
	
	//$http.get('./dist/files/city.json')
    //.then(function(res){
      // $scope.citydata = res.data;                
     //});
	
	
	
	//$scope.city_data = getCites.city_data();
	
	
	
	
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
