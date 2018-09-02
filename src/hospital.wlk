class Hospital {

	const doctores = []
	const pacientesAtendidos = []
	var slogan = "Haciendo todo para que vuelvas"

	method slogan() = slogan

	method slogan(nuevoSlogan) {
		slogan = nuevoSlogan
	}

	// Todo lo que tenga que ver con la colección de doctores:
	method doctores() = doctores

	method agregaDoctores(unosDoctores) {
		self.doctores().addAll(unosDoctores)
	}

	method agregaDoctor(unDoctor) {
		self.agregaDoctores([ unDoctor ])
	}

	method despediATodos() {
		self.doctores().clear()
	}

	method doctores(nuevosDoctores) {
		self.despediATodos()
		self.agregaDoctores(nuevosDoctores)
	}

	// Todo lo que tenga que ver con la colección de pacientes:
	method pacientesAtendidos() = pacientesAtendidos

	method limpiaHistorialDePacientes() {
		self.pacientesAtendidos().clear()
	}

	method agregaPacientesAtendidos(unosPacientes) {
		self.pacientesAtendidos().addAll(unosPacientes)
	}

	method pacientesAtendidos(nuevosPacientesAtendidos) {
		self.limpiaHistorialDePacientes()
		self.agregaPacientesAtendidos(nuevosPacientesAtendidos)
	}

	method calidad() = self.doctores().sum({ doctor => doctor.calidad() })

	method fama() = self.chismeDePacientes() * self.calidad()

	method chismeDePacientes() = self.pacientesAtendidos().sum({ paciente => paciente.chisme() })

	method dasConfianza() = self.calidad() >= 100 && self.fama() >= 1000

	method agregaPacienteAtendido(unPaciente) {
		self.agregaPacientesAtendidos([ unPaciente ])
	}

	method cura(unPaciente) {
		self.peorDoctor().cura(unPaciente)
		self.agregaPacienteAtendido(unPaciente)
	}

	method peorDoctor() = self.doctores().min({ doctor => doctor.calidad() })

	method atendiste(unPaciente) = self.pacientesAtendidos().contains(unPaciente)

}
