class Hospital {

	const property doctores = []
	const property pacientesAtendidos = []
	var property slogan = "Haciendo todo para que vuelvas"

	method calidad() = self.doctores().sum({ doctor => doctor.calidad() })

	method fama() = self.chismeDePacientes() * self.calidad()

	method chismeDePacientes() = self.pacientesAtendidos().sum({ paciente => paciente.chisme() })

	method dasConfianza() = self.calidad() >= 100 && self.fama() >= 1000

	method agregaPacienteAtendido(unPaciente) {
		self.pacientesAtendidos().add(unPaciente)
	}

	method cura(unPaciente) {
		self.peorDoctor().cura(unPaciente)
		self.agregaPacienteAtendido(unPaciente)
	}

	method peorDoctor() = self.doctores().min({ doctor => doctor.calidad() })

	method atendiste(unPaciente) = self.pacientesAtendidos().contains(unPaciente)

}
