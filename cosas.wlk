object knigthRider {
  
method peso() {
  return 500
}

method nivelDePeligrosidad() {
  return 10
}

}

object bumblebee {
  
  var property estadoActual = auto
  
  method peso() {
    return 800
  }

method nivelDePeligrosidad() {
  return estadoActual.nivelDePeligrosidad()
}

method transformarse() {
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

    method peso() {
      cantLadrillos * 2
    }

    method nivelDePeligrosidad() {
  return 2
}

}

object arenaAGranel {
  
var property peso =  1

method peligrosidad() {
  return 1
}
}

object bateriaAntiArea {

var property tieneMisiles = true 

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

}

object contenedor {
  
    const cosasAdentro = [] 

    method peso() {
      100 + cosasAdentro.sum({cosas => cosas.peso()})
    }

    method nivelDePeligrosidad() {
      
    }

}


object residuosRadioactivos {
  var property peso = 0

  method nivelDePeligrosidad() {
    return 200
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
}


