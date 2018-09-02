class Paciente {
	var property chisme = 500
	var property salud = 250 
	
	method enfermate(){
		self.salud(10)
	}
	
	method tenesBuenaSalud() = self.salud() >= 200
	
	method curate(){
		self.salud(300)
	}
}