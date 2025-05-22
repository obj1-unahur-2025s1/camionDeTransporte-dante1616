object knigthRider {
  
method cantidadDeBultosOcupados() {
  return 1
}

method peso() {
  return 500
}

method nivelDePeligrosidad() {
  return 10
}

method consecuenciaDeCarga() {

}

}

object bumblebee {
  
  var property estadoActual = auto
  
  method peso() {
    return 800
  }

    
method cantidadDeBultosOcupados() {
  return 2
}


method nivelDePeligrosidad() {
  return estadoActual.nivelDePeligrosidad()
}

method transformarse() {
  estadoActual = robot
}

method consecuenciaDeCarga() {
  estadoActual = robot
}

}

object auto {
  method peso() {
    return 15
  }
}

object robot {
  method peso() {
    30
  }
}

object paqueteDeLadrillos {
  var property cantLadrillos = 1 
  var property cantidadBultos = 0


method cantidadDeBultosEnElCamion() {
  if(cantLadrillos == 100){
    cantidadBultos = 1
  }else if(cantLadrillos.between(101, 300)){
    cantidadBultos = 2
  }else{
    cantidadBultos = 3
  }
}

    method peso() {
      cantLadrillos * 2
    }

    method nivelDePeligrosidad() {
  return 2
}

method consecuenciaDeCarga() {
    cantLadrillos = cantLadrillos + 12
}

}

object arenaAGranel {
  

var property peso =  1

  
method cantidadDeBultosOcupados() {
  return 1
}


method peligrosidad() {
  return 1
}

method consecuenciaDeCarga() {
  peso = peso - 10
}

}

object bateriaAntiArea {

var property tieneMisiles = true 
var property cantidadDeBultos = 2

method cantidadDeBultosEnElCamion() {
    if(tieneMisiles){
        cantidadDeBultos = 2
    }else{
        cantidadDeBultos = 1
    }

}

method peso() {
 if(tieneMisiles){
    300
 }else{
    200
 }
}

method nivelDePeligrosidad() {
  if(tieneMisiles){
    100
  }else{
    0
  }
}

method consecuenciaDeCarga() {
  self.cargarMisiles()
}

 method cargarMisiles() {tieneMisiles = true}
method descargarMisiles() {tieneMisiles = false}

}

object contenedor {
  
    const cosasAdentro = [] 

    method cantBultos() {
      return 1 + cosasAdentro.sum({c => c.cantBultos()})
    }  

    method peso() {
      100 + cosasAdentro.sum({cosas => cosas.peso()})
    }

    method nivelDePeligrosidad() {
      
    }

    method consecuenciaDeCarga() {
      return cosasAdentro.forEach({c => c.consecuenciaDeCarga()})
    }
}


object residuosRadioactivos {
  var property peso = 0

  method nivelDePeligrosidad() {
    return 200
  } 

    
method cantidadDeBultosOcupados() {
  return 1
}

method consecuenciaDeCarga() {
  peso = peso + 15
}

}

object embalajeDeSeguridad {
  
    var property cosaEnvuelta = residuosRadioactivos

    method peso() {
      cosaEnvuelta.peso()
    }
    
    method nivelDePeligrosidad() {
      cosaEnvuelta.nivelDePeligrosidad() / 2
    }

    method cantidadDeBultosOcupados() {
  return 2
}

method consecuenciaDeCarga() {
  
}

}


