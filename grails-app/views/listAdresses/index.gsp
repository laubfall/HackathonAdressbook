<!doctype html>
<html lang="en" ng-app="addressbook">
<head>
<meta charset="utf-8">
<title>My HTML File</title>
<script src="${resource(dir: 'assets', file: 'angular.js')}" ></script>
<script src="${resource(dir: 'assets', file: 'angular-modules.js')}" ></script>
<script src="${resource(dir: 'assets', file: 'controller.js')}" ></script>
<link type="text/css" href="${resource(dir: 'css', file: 'main.css')}" />
</head>

<body ng-controller="AddressListCtrl">
	<ul>
		<li ng-repeat="address in addresses"><span>{{address.name}}</span>
			<p>{{address.surname}}</p></li>
	</ul>

</body>
</html>