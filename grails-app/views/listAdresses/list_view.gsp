{{data}}
	<ul>
		<li ng-repeat="adress in addresses"><span>{{adress.id}} {{adress.name}}</span>
			<p>{{adress.surname}}</p><a href="#/editCreate/{{adress.id}}">bearbeiten</a></li>
	</ul>