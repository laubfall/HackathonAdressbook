package hackathonaddressbuch

class EditCreateController {

    def index() { 
		def all = Adress.list();
		render(contentType: "application/json") {
			array {
				for(a in all) {
						address name: a.name, surname: a.surname
				}
			}
		}
	}
	
	def save(Adress adress) {
		adress.save();
	}
}
