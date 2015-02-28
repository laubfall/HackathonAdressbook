import hackathonaddressbuch.Adress

class BootStrap {

    def init = { servletContext ->
		def a = new Adress(name : "Daniel", surname : "Ludwig", city: "Bebra", plz: "36179", street: "Carl-Gördeler-Straße 24");
		a.save();
		a = new Adress(name : "Hartmut", surname : "Ludwig", city: "Bebra", plz: "36179", street: "Carl-Gördeler-Straße 24");
		a.save();
    }
    def destroy = {
    }
}
