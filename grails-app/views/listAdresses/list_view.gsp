

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
						<th scope="row">{{adress.id}}</th>
						<td>{{adress.name}}</td>
						<td>{{adress.surname}}</td>
						<td>{{adress.city}}</td>
						<td><a href="mailto:{{adress.email}}">{{adress.email}}</a></td>
						<td class="actions">
							<a href="#/adressDetail/{{adress.id}}" title="Details anzeigen" class="glyphicon glyphicon-eye-open"></a>
							<a href="#/editCreate/{{adress.id}}" title="Bearbeiten"><i class="glyphicon glyphicon-edit"></i></a>
							<a ng-click="deleteFnc(adress)" title="Löschen"><i class="glyphicon glyphicon-trash"></i></a>
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