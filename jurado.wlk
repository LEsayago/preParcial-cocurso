object mozart {
  var property valoracionMaxima = 10
  method evaluarParticipante(
    unParticipante, unConcurso
  ) = (unParticipante.calidadMusical() * 2).min(valoracionMaxima)
  
    method buenasNoticias() {
    }

    method cambiarAnimo() {
        if (valoracionMaxima == 10) {
            valoracionMaxima = 8
        } else {
            valoracionMaxima = 10
    }
    }

}

object beethoven {
  var estaEnojado = true
  var property nivelDeEntusiasmo = 0
  
  method evaluarParticipante(unParticipante, unConcurso) {
    return (unConcurso.porcentajeDeOcupacion(
      unParticipante.ocupacionDelEscenario()
    ) / 10) + (if (estaEnojado) 1 else nivelDeEntusiasmo)
  }
  
  method buenasNoticias() {
    estaEnojado = false
    nivelDeEntusiasmo = 5
  }

  method cambiarAnimo() {
    if ((nivelDeEntusiasmo > 0 and nivelDeEntusiasmo < 6)){
      nivelDeEntusiasmo += 1
    } else {
      nivelDeEntusiasmo = 0
      estaEnojado = true
    }
  }

  method cambiarAnimoSiNoEstaEnojado() {
    if (not estaEnojado) {
      nivelDeEntusiasmo -= 1
      nivelDeEntusiasmo = nivelDeEntusiasmo.max(0)
    }
    
  }
}