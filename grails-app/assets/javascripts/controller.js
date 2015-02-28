// load an existing addressbook module
// it exists because it is created in angular-modules.js
var addrApp = angular.module('addressbook',
		[ 'addressbookServices', 'ngRoute' ]);

addrApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/addresses', {
		templateUrl : '/HackathonAddressbuch/listAdresses/list_view',
		controller : 'AddressListCtrl'
	}).when('/editCreate/:adressId', {
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

				$scope.update = function(adress) {

					// TODO Forward nach Edit Seite
					$http.get('/HackathonAddressbuch/editCreate').success(
							function(data, status) {
								$scope.status = status;
								$scope.adress = adress;
							});
				}

			});
});

addrApp.controller('EditCreateCtrl', ['$scope', '$routeParams', function($scope, $http, $routeParams) {
	$scope.adress = $routeParams.adressId;
}]);