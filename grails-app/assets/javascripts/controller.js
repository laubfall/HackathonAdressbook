// load an existing addressbook module
// it exists because it is created in angular-modules.js
var addrApp = angular.module('addressbook',
		[ 'addressbookServices', 'ngRoute', 'ngMessages' ]);

addrApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/addresses', {
		templateUrl : '/HackathonAddressbuch/listAdresses/list_view',
		controller : 'AddressListCtrl'
	}).when('/editCreate/:adressId', {
		templateUrl : '/HackathonAddressbuch/editCreate/edit_view',
		controller : 'EditCreateCtrl'
	}).when('/editCreate', {
		templateUrl : '/HackathonAddressbuch/editCreate/edit_view',
		controller : 'EditCreateCtrl'
	}).when('/adressDetail/:adressId', {
		templateUrl : '/HackathonAddressbuch/editCreate/detail_view',
		controller : 'EditCreateDetailCtrl'
	})
	.otherwise({
		redirectTo : '/addresses'
	});
} ]);

addrApp.controller('AddressListCtrl', function($scope, $http, $location, Grails) {
	$http.get('/HackathonAddressbuch/listAdresses/list').success(
			function(data, status) {
				$scope.status = status;
				$scope.addresses = data;
			});
	
	$scope.deleteFnc = function(adress) {
		$http.delete('/HackathonAddressbuch/editCreate/delete/' + adress.id).success(
				function(data, status) {
					$location.url('/adresses');
				});
	}
});

addrApp.controller('EditCreateCtrl', ['$scope', '$http', '$routeParams', '$location', function($scope, $http, $routeParams, $location) {
	if($routeParams.adressId) {
		$http.get('/HackathonAddressbuch/editCreate/show/' + $routeParams.adressId).success(
				function(data, status) {
					$scope.status = status;
					$scope.adress = data;
				});
	}
	
	$scope.update = function(adress) {
		if(adress.$invalid) {
			return;
		}
		$http.post('/HackathonAddressbuch/editCreate/save/', angular.toJson(adress));
		$location.url('/adresses')
	}
}]);

addrApp.controller('EditCreateDetailCtrl', function($scope, $routeParams, $http) {
	$http.get('/HackathonAddressbuch/editCreate/show/' + $routeParams.adressId).success(
			function(data, status) {
				$scope.status = status;
				$scope.adress = data;
			});
});
