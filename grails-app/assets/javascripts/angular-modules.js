var myModule = angular.module('addressbookServices', ['ngResource']);

myModule.factory("Grails",['$resource', function($resource) {
	return $resource('/HackathonAddressbuch/editCreate');
}]);