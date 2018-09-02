class Paciente {
	var chisme = 500
	var salud = 250 
	
	method chisme() = chisme
	method chisme(nuevoChisme){
		chisme = nuevoChisme
	}
	
	method salud() = salud
	method salud(nuevaSalud){
		salud = nuevaSalud
	}
	
	method enfermate(){
		self.salud(10)
	}
	
	method tenesBuenaSalud() = self.salud() >= 200
	
	method curate(){
		self.salud(300)
	}
}
