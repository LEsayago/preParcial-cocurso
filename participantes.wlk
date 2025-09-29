
/*  method ocupacionDelEscenario(){}
    method calidadMusical(){}
    */
object taylor{
    
    var costoDeBanda = 1
    
    method ocupacionDelEscenario()= 10 * costoDeBanda
    
    method calidadMusical()= 5 + costoDeBanda
    
    method costoDeBanda() = costoDeBanda
    
    method aumentarCostoDeBanda(unValor){
        costoDeBanda += unValor 
    }

    method practicar() {
    costoDeBanda *= 2
    }
}

object morat{
    const integrantes = ["juan", "pablo", "simón", "martín"]

    method ocupacionDelEscenario()= integrantes.sum({i => i.size()})
 
    method calidadMusical()= 2 * integrantes.size()

    method practicar(){
        var saleDeLaBanda = integrantes.filter({ i => i.length() > 5 })
        integrantes.removeAll(saleDeLaBanda)
       
    }      
}

object silvioRodriguez{

    method ocupacionDelEscenario()=  1

    method calidadMusical()= 10

    method practicar() { }
  
}

object badBunny{
    var nivelDeAutotune = 0
    const bailarinas = 8
    
    method ocupacionDelEscenario()= 1 + bailarinas
    
    method aumentarAutotune(unValor){
        nivelDeAutotune += unValor
        nivelDeAutotune = nivelDeAutotune.min(10)
    }
    method calidadMusical()= 10 - nivelDeAutotune

    method practicar() {
        if (nivelDeAutotune > 0) {
            nivelDeAutotune -= 1
        }
    }

}
