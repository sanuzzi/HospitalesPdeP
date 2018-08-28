/** First Wollok example */
object hospital {
	const doctores = []
	const pacientes = []
	
	method slogan() = "Haciendo todo para que vuelvas"
	
	method pacientes() = pacientes
	
	method pacientes(nuevosPacientes){
		pacientes.clear()
		pacientes.addAll(nuevosPacientes)
	}
	
	method agregaPaciente(unPaciente){
		pacientes.add(unPaciente)
	}
	
	method doctores() = doctores
	
	method doctores(nuevosDoctores){
		doctores.clear()
		doctores.addAll(nuevosDoctores)
	}
	
	method agregaDoctor(unDoctor){
		doctores.add(unDoctor)
	}
	
	method cualEsTuFama() = self.chismeTotal() * self.calidadTotal()
		
	method chismeTotal() = 
		self.pacientes().sum({paciente => paciente.chisme()})
	
	method calidadTotal() = 
		self.doctores().sum({doctor => doctor.calidadDeAtencion()})
	
	method sosFamoso() = self.cualEsTuFama() > 1000
	
	method peorDoctor() =
		self.doctores().min({doctor => doctor.calidadDeAtencion()})
	
	method cura(unPaciente){
		self.peorDoctor().cura(unPaciente)
		self.agregaPaciente(unPaciente)
	}
	
	method atendiste(unPaciente) = 
		self.pacientes().contains(unPaciente)
}

object sandra {
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

object juan {
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



object lucas {
	var calidadDeAtencion = 0
	
	method calidadDeAtencion() = calidadDeAtencion
	
	method calidadDeAtencion(nuevaCalidad){
		calidadDeAtencion = nuevaCalidad
	}
	
	method cura(unPaciente){
		const saludInicial = unPaciente.salud()
		unPaciente.curate()
		const saludFinal = unPaciente.salud()
		self.aumentaCalidadDeAtencion(saludFinal - saludInicial)
	}
	method aumentaCalidadDeAtencion(puntosNuevos){
		self.calidadDeAtencion(self.calidadDeAtencion() + puntosNuevos)
	}
	
}

object pepe {
	var calidadDeAtencion = 0
	
	method calidadDeAtencion() = calidadDeAtencion
	
	method calidadDeAtencion(nuevaCalidad){
		calidadDeAtencion = nuevaCalidad
	}
	
	method cura(unPaciente){
		const saludInicial = unPaciente.salud()
		unPaciente.curate()
		const saludFinal = unPaciente.salud()
		self.aumentaCalidadDeAtencion(saludFinal - saludInicial)
	}
	method aumentaCalidadDeAtencion(puntosNuevos){
		self.calidadDeAtencion(self.calidadDeAtencion() + puntosNuevos)
	}
}

object lucho {
	var calidadDeAtencion = 0
	
	method calidadDeAtencion() = calidadDeAtencion
	
	method calidadDeAtencion(nuevaCalidad){
		calidadDeAtencion = nuevaCalidad
	}
	
	method cura(unPaciente){
		const saludInicial = unPaciente.salud()
		unPaciente.curate()
		const saludFinal = unPaciente.salud()
		self.aumentaCalidadDeAtencion(saludFinal - saludInicial)
	}
	method aumentaCalidadDeAtencion(puntosNuevos){
		self.calidadDeAtencion(self.calidadDeAtencion() + puntosNuevos)
	}
}



