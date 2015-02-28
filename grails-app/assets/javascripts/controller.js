
// load an existing addressbook module
// it exists because it is created in angular-modules.j
var addrApp = angular.module('addressbook',['addressbookServices']);

addrApp.controller('AddressListCtrl', function ($scope, $http, Grails) {
	var result = $http.get('/HackathonAddressbuch/editCreate').success(function(data, status) {
        $scope.status = status;
        $scope.addresses = data;
        $scope.data = data;
        
        $scope.update = function(adress) {
        	$http.post('/HackathonAddressbuch/editCreate', angular.toJson(adress));
        }
      });	
});