<!doctype html>
<html lang="en" ng-app="addressbook">
<head>
<meta charset="utf-8">
<title>My HTML File</title>
<script src="${resource(dir: 'javascripts', file: 'angular.js')}" ></script>
<script src="${resource(dir: 'javascripts', file: 'angular-resources.js')}" ></script>
<script src="${resource(dir: 'javascripts', file: 'angular-route.js')}" ></script>
<script src="${resource(dir: 'javascripts', file: 'angular-messages.js')}" ></script>
<script src="${resource(dir: 'assets', file: 'angular-modules.js')}" ></script>
<script src="${resource(dir: 'javascripts', file: 'controller.js')}" ></script>

<link rel="stylesheet" href="assets/css/index.min.css">
</head>

<body>
<span ng-view></span>


	<!--
	JavaScript
	=======================================================
	Placed at the end of the document. Performance reasons.
	Non minified/merged versions for debugging purposes are
	replaced in the production ready build.
	-->

	<!-- Libs -->
	<script src="libs/libs.js"></script>

	<!-- Own JS -->
	<script src="assets/js/built.min.js"></script>
</body>
</html>