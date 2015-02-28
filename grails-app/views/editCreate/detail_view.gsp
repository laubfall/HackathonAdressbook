<form novalidate class="simple-form">
	    Name: <input type="text" ng-model="adress.name" /><br />
	    Surname: <input type="text" ng-model="adress.surname" /><br />
	    <input type="submit" ng-click="update(adress)" value="Save" />
	  </form>
	  <pre>form = {{adress | json}}</pre>