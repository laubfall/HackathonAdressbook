
	
	
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">
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
		<h1>Adressen</h1>
		<hr>
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>Vorname</th>
						<th>Nachname</th>
						<th>Stadt</th>
						<th>E-Mail Adresse</th>
						<th></th>
					</tr>
				</thead>
				<tbody ng-repeat="adress in addresses">
					<tr>
						<th scope="row">1</th>
						<td>{{adress.name}}</td>
						<td>{{adress.surname}}</td>
						<td>{{adress.city}}</td>
						<td><a href="mailto:{{adress.email}}">{{adress.email}}</a></td>
						<td class="actions">
							<a href="#/adressDetail/{{adress.id}}" title="Details anzeigen" class="glyphicon glyphicon-eye-open"></a>
							<a href="#/editCreate/{{adress.id}}" title="Bearbeiten"><i class="glyphicon glyphicon-edit"></i></a>
							<a href="deleted.html" title="Löschen"><i class="glyphicon glyphicon-trash"></i></a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<nav class="text-center">
			<ul class="pagination">
				<li class="disabled">
					<a href="#" aria-label="Previous">
						<span aria-hidden="true">«</span>
					</a>
				</li>
				<li class="active">
					<a href="#">1 <span class="sr-only">(current)</span></a>
				</li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li>
					<a href="#" aria-label="Next">
						<span aria-hidden="true">»</span>
					</a>
				</li>
			</ul>
		</nav>

		<hr>

		<a href="#/editCreate" class="btn btn-success pull-right">
			<i class="glyphicon glyphicon-plus-sign"></i>
			Adresse hinzufügen
		</a>
		<!-- end: content -->
	</div>
	<!-- end: content container -->