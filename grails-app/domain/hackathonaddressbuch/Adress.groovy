package hackathonaddressbuch

import grails.rest.Resource

//@Resource(uri='/editCreate', formats=['json'])
class Adress {
	String name;
	
	String surname;
	
	String street;
	
	String plz;
	
	String city;
	
	String email;
	
    static constraints = {
		// without the explicit constraint every field is nullable false.
		// groovy does not complain while saving an entity with empty properties that are non nullable.
		email nullable: true;
    }
}
