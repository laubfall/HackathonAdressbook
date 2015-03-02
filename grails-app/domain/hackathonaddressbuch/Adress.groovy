package hackathonaddressbuch

import grails.rest.Resource

//@Resource(uri='/editCreate', formats=['json'])
class Adress {
	String name;
	
	String surname;
	
	String street;
	
	int streetNr;
	
	int plz;
	
	String city;
	
	String email;
	
    static constraints = {
		// without the explicit constraint every field is nullable false.
		// groovy does not complain while saving an entity with empty properties that are non nullable.
		email nullable: true;
    }
	
	
	static search = {
		// fields
		name index: 'tokenized'
		surname index: 'tokenized'
		city index: 'tokenized'
		email index: 'tokenized'
		plz numeric: 5
		streetNr numeric: 3

		// support for classBridge
//		classBridge = ['class': MyClassBridge, params: [myParam: "4"]]
	}
}
