package hackathonaddressbuch

import org.codehaus.groovy.grails.web.metaclass.WithFormMethod;

import grails.converters.JSON
import grails.transaction.Transactional

class EditCreateController {

    def index() { 
		
	}
	
	def detail_view() {
		
	}
	
	def edit_view() {
		
	}
	
	def show() {
		def a = Adress.get(params.id);
		withFormat {
			json { render a as JSON}
		}
	}
	
	@Transactional
	def save(Adress a) {
		a.save();
		withFormat {
			json { render a as JSON}
		}
	}
	
	@Transactional
	def delete(Adress a) {
		a.delete();
		render(contentType: "application/json") {
			delete result: true, entityid: a.id
		}
	}
}
