package hackathonaddressbuch

class EditCreateController {

    def index() { 
		Adress a = new Adress(name : "Daniel", surname : "Ludwig");
		render(contentType: "application/json") {
					address name: a.name
		}
	}
}
