
class Hospital {
	const property curadores = []
	const property pacientesAtendidos = []
	var property slogan = "Haciendo todo para que vuelvas"

	method calidad() = self.curadores().sum({ curador => curador.calidad() })

	method fama() = self.chismeDePacientes() * self.calidad()

	method chismeDePacientes() = self.pacientesAtendidos().sum({ paciente => paciente.chisme() })

	method dasConfianza() = self.calidad() >= 100 && self.fama() >= 1000

	method agregaPacienteAtendido(unPaciente) {
		self.pacientesAtendidos().add(unPaciente)
	}

	method cura(unPaciente) {
		self.peorCurador().cura(unPaciente)
		self.agregaPacienteAtendido(unPaciente)
	}

	method peorCurador() = self.curadores().min({ curador => curador.calidad() })

	method atendiste(unPaciente) = self.pacientesAtendidos().contains(unPaciente)
}
