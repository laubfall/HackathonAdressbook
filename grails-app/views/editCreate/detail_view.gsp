
	<!-- begin: content container -->
	<div class="container">
		<!-- begin: content -->
		<h1>{{adress.name}} {{adress.surname}}</h1>
		<p>
			{{adress.street}} <br>
			{{adress.plz}} {{adress.city}}
		</p>
		<p>E-Mail: <a href="mailto:{{adress.email}}">{{adress.email}}</a></p>
		<hr>
		<p>
			<a class="btn btn-default" href="/HackathonAddressbuch">
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
