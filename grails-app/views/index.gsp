<!doctype html>
<html lang="en" ng-app="addressbook">
<head>
<meta charset="utf-8">
<title>My HTML File</title>
<script src="${resource(dir: 'javascripts', file: 'angular.js')}"></script>
<script
	src="${resource(dir: 'javascripts', file: 'angular-resources.js')}"></script>
<script src="${resource(dir: 'javascripts', file: 'angular-route.js')}"></script>
<script
	src="${resource(dir: 'javascripts', file: 'angular-messages.js')}"></script>
<script src="${resource(dir: 'assets', file: 'angular-modules.js')}"></script>
<script src="${resource(dir: 'javascripts', file: 'controller.js')}"></script>

<link rel="stylesheet" href="assets/css/index.min.css">
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/HackathonAddressbuch"> <i
					class="glyphicon glyphicon-book"></i> Adressbuch
				</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" placeholder="Suchbegriff" class="form-control">
					</div>
					<button type="submit" class="btn btn-primary">
						<i class="glyphicon glyphicon-search"></i> Suchen
					</button>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>

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