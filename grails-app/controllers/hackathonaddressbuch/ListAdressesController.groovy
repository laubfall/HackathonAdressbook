package hackathonaddressbuch

class ListAdressesController {

    def index() { 
		
	}
	
	def list() {
		def all = Adress.list();
		render(contentType: "application/json") {
			array {
				for(a in all) {
						address name: a.name, surname: a.surname
				}
			}
		}
	}
}
