<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Ajax</title>

 <script data-require="angular.js@*" data-semver="1.2.0-rc3-nonmin" src="http://code.angularjs.org/1.2.0-rc.3/angular.js"></script>
    <script data-require="ng-table@*" data-semver="0.3.0" src="http://bazalt-cms.com/assets/ng-table/0.3.0/ng-table.js"></script>
    
    <link data-require="ng-table@*" data-semver="0.3.0" rel="stylesheet" href="http://bazalt-cms.com/assets/ng-table/0.3.0/ng-table.css" />
    <link data-require="bootstrap-css@*" data-semver="3.0.0" rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
	
<!--- <script src="./dist/js/angular.min.js"></script>
  <script src="./dist/js/ng-table.js"></script> --->


	<!--- <script>
	var app = angular.module('main', ['ngTable']).
	function MainCntrl($scope, ngTableParams) {
	var city_data = new lineitem_cfc();
	$scope.city = city_data.cf_cites();
	//alert(ColdFusion.JSON.encode($scope.city));
	}


 var data = $scope.city;
    $scope.tableParams = new ngTableParams({
        page: 1,            // show first page
        count: 10           // count per page
    }, {
        total: data.length, // length of data
        getData: function($defer, params) {
            $defer.resolve(data.slice((params.page() - 1) * params.count(), params.page() * params.count()));
        }
    });
	</script> --->
	
	<script>
	app = angular.module('main', ['ngTable']).
controller('DemoCtrl', function($scope, ngTableParams) {
    var data = [{name: "Moroni", age: 50},
                {name: "Tiancum", age: 43},
                {name: "Jacob", age: 27},
                {name: "Nephi", age: 29},
                {name: "Enos", age: 34},
                {name: "Tiancum", age: 43},
                {name: "Jacob", age: 27},
                {name: "Nephi", age: 29},
                {name: "Enos", age: 34},
                {name: "Tiancum", age: 43},
                {name: "Jacob", age: 27},
                {name: "Nephi", age: 29},
                {name: "Enos", age: 34},
                {name: "Tiancum", age: 43},
                {name: "Jacob", age: 27},
                {name: "Nephi", age: 29},
                {name: "Enos", age: 34}];

    $scope.tableParams = new ngTableParams({
        page: 1,            // show first page
        count: 10           // count per page
    }, {
        total: data.length, // length of data
        getData: function($defer, params) {
            $defer.resolve(data.slice((params.page() - 1) * params.count(), params.page() * params.count()));
        }
    });
});
</scrip>
</head>
<body ng-app="main">
    <div ng-controller="DemoCtrl">
        <p><strong>Page:</strong> {{tableParams.page()}}</p>
        <p><strong>Count per page:</strong> {{tableParams.count()}}</p>
        
        <table ng-table="tableParams" class="table">
        <tr ng-repeat="user in $data">
            <td data-title="'Name'">{{user.name}}</td>
            <td data-title="'Age'">{{user.age}}</td>
        </tr>
        </table>
    </div>
</body>
<!--- <body ng-app="main" ng-controller="MainCntrl">
body text here
<p><strong>Page:</strong> {{tableParams.page()}}</p>
        <p><strong>Count per page:</strong> {{tableParams.count()}}</p>
<table ng-table="tableParams" class="table" >
        <tr ng-repeat="user in $data">
            <td data-title="'City'" filter="{ 'City': 'text' }">
                {{user.city_mls}}
            </td>
            <td data-title="'Last Name'">
                {{user.state}}
            </td>
        </tr>
    </table>



</body> --->
</html>
 <cfajaxproxy cfc="cfc.lineitems" jsclassname="lineitem_cfc">