
<form class="simple-form" name="adress">
	
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
</form>
<pre>form = {{adress | json}}</pre>