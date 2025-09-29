import jurado.*
import participantes.*


object concurso {
  const participantes = []
  var superficie = 20
  method superficie() = superficie

  method participantes() = participantes
  
  method porcentajeDeOcupacion(
    ocupacionDelEscenario
  ) = (ocupacionDelEscenario / self.superficie()) * 100
  
  method inscribir(unParticipante) {
    participantes.add(unParticipante)
  }
  
  method darDeBaja(unParticipante) {
    participantes.remove(unParticipante)
  }
  
  method entrenarATodos() {
    participantes.forEach({ p => p.practicar() })
  }
  
  method ganador() {
    return participantes.max({ p =>
      mozart.evaluarParticipante(p, self) + beethoven.evaluarParticipante(p, self)})
  
  }
  
  method ampliarEscenario(metros) {
    superficie += metros
  }

  method eventoEspecial() {
    self.ampliarEscenario(10)
    beethoven.buenasNoticias()
    mozart.cambiarAnimo()
    
    
  }

}