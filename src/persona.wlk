import noSaberNiQueEsUnTermometro.*
import conocimientoDeMedico.*

class Persona {
	var property chisme = 500
	var property salud = 250 
	var property conocimientoDeMedicina = new NoSaberNiQueEsUnTermometro()
	
	method enfermate(){
		self.salud(10)
	}
	
	method tenesBuenaSalud() = self.salud() >= 200
	
	method curate(){
		self.salud(300)
	}
	
	method cura(unPaciente){
		self.conocimientoDeMedicina().cura(unPaciente)
	}

	method calidad() = self.conocimientoDeMedicina().calidad()
	
	method estudiaMedicina(){
		self.conocimientoDeMedicina(new ConocimientoDeMedico())
	}
}
