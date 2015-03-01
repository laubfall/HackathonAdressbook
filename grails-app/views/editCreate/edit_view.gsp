
<!-- begin: content container -->
	<div class="container">
		<!-- begin: content -->
		<h1>Adresse bearbeiten/hinzufügen</h1>
		<hr>
		<div ng-messages="adress.streetN.$error">
			<div ng-message="required">Feld Straße muss gesetzt sein</div>
		</div>
		
		<div ng-messages="adress.nameN.$error">
			<div ng-message="required" class="alert alert-info" role="alert">Feld Vorname muss gesetzt sein</div>
		</div>
		
		<div ng-messages="adress.surnameN.$error">
			<div ng-message="required" class="alert alert-info" role="alert">Feld Name muss gesetzt sein</div>
		</div>
		
		<div ng-messages="adress.plzN.$error">
			<div ng-message="required">Feld PLZ muss gesetzt sein</div>
		</div>
		
		<div ng-messages="adress.cityN.$error">
			<div ng-message="required">Feld Ort muss gesetzt sein</div>
		</div>
		<form name="adress">
			<div class="row">
				<div class="col-sm-6 col-xs-12">
					<div class="form-group">
						<label for="vorname">Vorname</label>
						<input type="text" class="form-control" ng-model="adress.name" id="vorname" name="nameN" placeholder="" required>
					</div>
				</div>
				<div class="col-sm-6 col-xs-12">
					<div class="form-group">
						<label for="nachname">Nachname</label>
						<input type="text" class="form-control" ng-model="adress.surname" id="nachname" name="surnameN" placeholder="" required>
					</div>
				</div>
				<div class="col-xs-9">
					<div class="form-group">
						<label for="strasse">Strasse</label>
						<input type="text" class="form-control" ng-model="adress.street" id="strasse" placeholder="">
					</div>
				</div>
				<div class="col-xs-3">
					<div class="form-group">
						<label for="hausnummer">Nr.</label>
						<input type="number" class="form-control" ng-model="adress.streetNr" id="hausnummer" placeholder="">
					</div>
				</div>
				<div class="col-xs-3">
					<div class="form-group">
						<label for="plz">PLZ</label>
						<input type="number" class="form-control" ng-model="adress.plz" id="plz" placeholder="">
					</div>
				</div>
				<div class="col-xs-9">
					<div class="form-group">
						<label for="ort">Ort</label>
						<input type="text" class="form-control" ng-model="adress.city" id="ort" placeholder="">
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="email">E-Mail Adresse</label>
						<input type="text" class="form-control" ng-model="adress.email" id="email" placeholder="">
					</div>
					<hr>
				</div>
				<div class="col-xs-6">
					<a class="btn btn-default" href="/HackathonAddressbuch">
					<i class="glyphicon glyphicon-chevron-left"></i>
					Zurück
				</a>
				</div>
				<div class="col-xs-6">
					<button type="submit" class="btn btn-success pull-right" ng-click="update(adress)">
						<i class="glyphicon glyphicon-ok"></i>
						Speichern
					</button>
				</div>
			</div>
		</form>
		<!-- end: content -->
	</div>

	<!-- 
	Vorname: <input type="text" ng-model="adress.name" required name="nameN"/><br />
	Nachname: <input type="text" ng-model="adress.surname" required name="surnameN"/><br />
	Strasse: <input type="text" ng-model="adress.street" name="streetN" required /><br /> 
	Ort: <input type="text" ng-model="adress.city" name="cityN" required/><br />
	PLZ: <input type="text" ng-model="adress.plz" name="plzN" required /><br /> <input
		type="submit" ng-click="update(adress)" value="Save" />
	
	<div ng-messages="adress.streetN.$error">
		<div ng-message="required">Feld Straße muss gesetzt sein</div>
	</div>
	
	<div ng-messages="adress.nameN.$error">
		<div ng-message="required">Feld Vorname muss gesetzt sein</div>
	</div>
	
	<div ng-messages="adress.surnameN.$error">
		<div ng-message="required">Feld Name muss gesetzt sein</div>
	</div>
	
	<div ng-messages="adress.plzN.$error">
		<div ng-message="required">Feld PLZ muss gesetzt sein</div>
	</div>
	
	<div ng-messages="adress.cityN.$error">
		<div ng-message="required">Feld Ort muss gesetzt sein</div>
	</div>
		 -->