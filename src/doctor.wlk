class Doctor {

	var calidad = 0

	method calidad() = calidad

	method calidad(nuevaCalidad) {
		calidad = nuevaCalidad
	}

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
