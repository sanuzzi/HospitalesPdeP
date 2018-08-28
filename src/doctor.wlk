class Doctor {
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