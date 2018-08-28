class Persona {
	var chisme
	var salud
	method chisme() = chisme
	method chisme(nuevoChisme){
		chisme = nuevoChisme
	}
	method salud() = salud
	method salud(nuevaSalud){
		salud = nuevaSalud
	}
	method curate(){
		self.salud(100)
	}
	method enfermate(){
		self.salud(20)
	}
	method tenesBuenaSalud() = self.salud() == 100
}
