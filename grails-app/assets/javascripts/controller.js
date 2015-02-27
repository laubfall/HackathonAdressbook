
// load an existing addressbook module
// it exists because it is created in angular-modules.j
var addrApp = angular.module('addressbook',['addressbookServices']);

addrApp.controller('AddressListCtrl', function ($scope, $http, Grails) {
	var result = $http.get('/HackathonAddressbuch/editCreate').success(function(data, status) {
        $scope.status = status;
        $scope.addresses = data;
        $scope.data = data;
      });
//	$scope.addresses = result;
//	  $scope.addresses2 = [
//	    {'name': 'Nexus S',
//	     'surename': 'Fast just got faster with Nexus S.'},
//	    {'name': 'Motorola XOOM™ with Wi-Fi',
//	     'surename': 'The Next, Next Generation tablet.'},
//	    {'name': 'MOTOROLA XOOM™',
//	     'surename': 'The Next, Next Generation tablet.'}
//	  ];
//	debugger;
	
});