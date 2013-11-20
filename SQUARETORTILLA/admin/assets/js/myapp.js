
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







// start login page
app.controller('LoginController', ['$scope', 'AuthenticationService', function($scope, AuthenticationService) {
    $scope.credentials = { username: "", password: ""};
    $scope.login = function() {
        AuthenticationService.login($scope.credentials);
    };
    
}]);
//end login page


//start home page
app.controller('HomeController',    function($scope, AuthenticationService) {
    
    $scope.message = "Mouse over images for more info";
    $scope.logout = function() {
        AuthenticationService.logout();
    };
    

});

//start gallery page,
app.controller('galleryController', ['$scope', '$http', 'ngTableParams', function($scope, ngTableParams) {
    
    var city_data = new lineitem_cfc();
    $scope.city = [{"lat":42.22,"state":"NY","long":-75.52,"city_mls":"Afton","city":"AFTON"},{"lat":35.79,"state":"TN","long":-83.97,"city_mls":"Alcoa","city":"ALCOA"},{"lat":36.38,"state":"TN","long":-84.88,"city_mls":"Allardt","city":"ALLARDT"},{"lat":36.51,"state":"TN","long":-85.32,"city_mls":"Allons","city":"ALLONS"},{"lat":40.95,"state":"NJ","long":-73.92,"city_mls":"Alpine","city":"ALPINE"},{"lat":42.7,"state":"NY","long":-74.03,"city_mls":"Altamont","city":"ALTAMONT"},{"lat":36.2,"state":"TN","long":-84.04,"city_mls":"Andersonville","city":"ANDERSONVILLE"},{"lat":35.86,"state":"TN","long":-86.65,"city_mls":"Arrington","city":"ARRINGTON"},{"lat":36.54,"state":"TN","long":-83.67,"city_mls":"Arthur","city":"ARTHUR"},{"lat":44.92,"state":"ME","long":-69.67,"city_mls":"Athens","city":"ATHENS"},{"lat":36.86,"state":"KY","long":-83.88,"city_mls":"Barbourville","city":"BARBOURVILLE"},{"lat":39.53,"state":"WV","long":-80.14,"city_mls":"Baxter","city":"BAXTER"},{"lat":36.34,"state":"TN","long":-83.28,"city_mls":"Bean Station","city":"BEAN STATION"},{"lat":41.19,"state":"PA","long":-76.38,"city_mls":"Benton","city":"BENTON"},{"lat":35.36,"state":"TN","long":-84.99,"city_mls":"Birchwood","city":"BIRCHWOOD"},{"lat":46.5,"state":"ME","long":-67.86,"city_mls":"Blaine","city":"BLAINE"},{"lat":40.78,"state":"NY","long":-73.24,"city_mls":"Brentwood","city":"BRENTWOOD"},{"lat":43.95,"state":"ME","long":-69.5,"city_mls":"Bristol","city":"BRISTOL"},{"lat":36.18,"state":"TN","long":-85.75,"city_mls":"Buff...EETWATER"},{"lat":36.14,"state":"TN","long":-83.4,"city_mls":"Talbott","city":"TALBOTT"},{"lat":35.55,"state":"TN","long":-83.93,"city_mls":"Tallassee","city":"TALLASSEE"},{"lat":37.12,"state":"VA","long":-81.51,"city_mls":"Tazewell","city":"TAZEWELL"},{"lat":35.36,"state":"TN","long":-84.29,"city_mls":"Tellico Plains","city":"TELLICO PLAINS"},{"lat":35.66,"state":"TN","long":-84.66,"city_mls":"Ten Mile","city":"TEN MILE"},{"lat":36.35,"state":"TN","long":-83.41,"city_mls":"Thorn Hill","city":"THORN HILL"},{"lat":36.7,"state":"KY","long":-85.69,"city_mls":"Tompkinsville","city":"TOMPKINSVILLE"},{"lat":42.66,"state":"MA","long":-71.7,"city_mls":"Townsend","city":"TOWNSEND"},{"lat":35.12,"state":"TN","long":-84.35,"city_mls":"Turtletown","city":"TURTLETOWN"},{"lat":35.59,"state":"TN","long":-84.23,"city_mls":"Vonore","city":"VONORE"},{"lat":35.72,"state":"TN","long":-83.81,"city_mls":"Walland","city":"WALLAND"},{"lat":35.85,"state":"TN","long":-85.62,"city_mls":"Walling","city":"WALLING"},{"lat":36.1,"state":"TN","long":-84.58,"city_mls":"Wartburg","city":"WARTBURG"},{"lat":46.79,"state":"ME","long":-68.15,"city_mls":"Washburn","city":"WASHBURN"},{"lat":36.09,"state":"TN","long":-83.29,"city_mls":"White Pine","city":"WHITE PINE"},{"lat":36.29,"state":"TN","long":-83.13,"city_mls":"Whitesburg","city":"WHITESBURG"},{"lat":36.48,"state":"TN","long":-85.7,"city_mls":"Whitleyville","city":"WHITLEYVILLE"},{"lat":43.67,"state":"VT","long":-72.31,"city_mls":"Wilder","city":"WILDER"}];
    //city_data.cf_cites();
    //alert(ColdFusion.JSON.encode($scope.city));
   $scope.users =[{name: "Moroni", age: 50},
                {name: "Tiancum", age: 43},
                {name: "Jacob", age: 27},
                {name: "Nephi", age: 29},
                {name: "Enos", age: 34}];

    
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
    };
});
//end hover to show message
//end homepage
