package hackathonaddressbuch

import org.codehaus.groovy.grails.web.metaclass.WithFormMethod;

import grails.converters.JSON
import grails.transaction.Transactional

class EditCreateController {

    def index() { 
		
	}
	
	def detail_view() {
		
	}
	
	def show() {
		def a = Adress.get(params.id);
		withFormat {
			json { render a as JSON}
		}

//		render (contentType: "application/json"){
//			adress name: a.name, surname: a.surname, id: a.id
//		}
	}
	
	@Transactional
	def save(Adress a) {
		a.save();
		withFormat {
			json { render a as JSON}
		}
	}
}
