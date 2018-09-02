class Doctor {
	var property calidad = 0
	
	method aumentaCalidad(unaCalidad) {
		self.calidad(self.calidad() + unaCalidad)
	}

	method cura(unPaciente) {
		const saludAnterior = unPaciente.salud()
		unPaciente.curate()
		const saludNueva = unPaciente.salud()
		self.aumentaCalidad(saludNueva - saludAnterior)
	}

}