package hackathonaddressbuch

import grails.rest.Resource

@Resource(uri='/addresses', formats=['json', 'xml'])
class Adress {
	String name;
	
	String surname;
	
	String street;
	
	String plz;
	
	String city;
	
	String email;
	
    static constraints = {
    }
}
