// load an existing addressbook module
// it exists because it is created in angular-modules.js
var addrApp = angular.module('addressbook',
		[ 'addressbookServices', 'ngRoute', 'ngMessages' ]);

addrApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/addresses', {
		templateUrl : '/HackathonAddressbuch/listAdresses/list_view',
		controller : 'AddressListCtrl'
	}).when('/editCreate/:adressId', {
		templateUrl : '/HackathonAddressbuch/editCreate/detail_view',
		controller : 'EditCreateCtrl'
	}).when('/editCreate', {
		templateUrl : '/HackathonAddressbuch/editCreate/detail_view',
		controller : 'EditCreateCtrl'
	})
	.otherwise({
		redirectTo : '/addresses'
	});
} ]);

addrApp.controller('AddressListCtrl', function($scope, $http, Grails) {
	var result = $http.get('/HackathonAddressbuch/listAdresses/list').success(
			function(data, status) {
				$scope.status = status;
				$scope.addresses = data;
			});
});

addrApp.controller('EditCreateCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
	if($routeParams.adressId) {
		$http.get('/HackathonAddressbuch/editCreate/show/' + $routeParams.adressId).success(
				function(data, status) {
					$scope.status = status;
					$scope.adress = data;
				});
	}
	
	$scope.update = function(adress) {
		$http.post('/HackathonAddressbuch/editCreate/save/', angular.toJson(adress));
	}
}]);