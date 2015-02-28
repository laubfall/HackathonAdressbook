<!doctype html>
<html lang="en" ng-app="addressbook">
<head>
<meta charset="utf-8">
<title>My HTML File</title>
<script src="${resource(dir: 'javascripts', file: 'angular.js')}" ></script>
<script src="${resource(dir: 'javascripts', file: 'angular-resources.js')}" ></script>
<script src="${resource(dir: 'javascripts', file: 'angular-route.js')}" ></script>
<script src="${resource(dir: 'assets', file: 'angular-modules.js')}" ></script>
<script src="${resource(dir: 'javascripts', file: 'controller.js')}" ></script>
</head>

<body>
<span ng-view></span>
</body>
</html>