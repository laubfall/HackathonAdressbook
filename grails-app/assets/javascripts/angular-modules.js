//angular.module('ngResource');
var myModule = angular.module('addressbookServices', ['ngResource']);

myModule.factory("Grails"['$resource', function($resource) {
	var Product = $resource('/api/products/:id', {}, {
		update : {
			method : 'PUT'
		}
	});

	return Product;
}]);