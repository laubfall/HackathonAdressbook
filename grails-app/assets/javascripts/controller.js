
// load an existing addressbook module
// it exists because it is created in angular-modules.j
var addrApp = angular.module('addressbook',['addressbookServices']);

addrApp.controller('AddressListCtrl', function ($scope, Grails) {
  $scope.addresses = [
    {'name': 'Nexus S',
     'surename': 'Fast just got faster with Nexus S.'},
    {'name': 'Motorola XOOM™ with Wi-Fi',
     'surename': 'The Next, Next Generation tablet.'},
    {'name': 'MOTOROLA XOOM™',
     'surename': 'The Next, Next Generation tablet.'}
  ];
});