<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/HackathonAddressbuch">
					<i class="glyphicon glyphicon-book"></i>
					Adressbuch
				</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" placeholder="Suchbegriff" class="form-control">
					</div>
					<button type="submit" class="btn btn-primary">
						<i class="glyphicon glyphicon-search"></i>
						Suchen
					</button>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</nav>

	<!-- begin: content container -->
	<div class="container">
		<!-- begin: content -->
		<h1>{{adress.name}} {{adress.surname}}</h1>
		<p>
			{{adress.street}} <br>
			{{adress.plz}} {{adress.city}}
		</p>
		<p>E-Mail: <a href="mailto:mail@michael-kuehnel.de">{{adress.email}}</a></p>
		<hr>
		<p>
			<a class="btn btn-default" href="index.html">
				<i class="glyphicon glyphicon-chevron-left"></i>
				Zurück
			</a>
		</p>
		<!-- end: content -->
	</div>
	<!-- end: content container -->

	<!--
	JavaScript
	=======================================================
	Placed at the end of the document. Performance reasons.
	Non minified/merged versions for debugging purposes are
	replaced in the production ready build.
	-->

	<!-- Libs -->
	<script src="libs/libs.js"></script>
