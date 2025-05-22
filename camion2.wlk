import cosas.*


object camion {

const listaDeCargas = [] 
var property pesoDelCamion = 0 

method cargar(unaCosa) {
  listaDeCargas.add(unaCosa)
}

method pesoTotalDelCamion() {
  return 1000 + self.pesoCarga()
}

method cosasCargadasSonPares() {
  return listaDeCargas.all({p => p.peso().even()})
}

method tieneUnaCosaConPeso(unPeso) {
  return listaDeCargas.any({p => p.peso() == unPeso})
}

method cosasConUnNumeroDePeligrosidad(unNivelDePeligro) {
  return listaDeCargas.find({c => c.nivelDePeligrosidad() > unNivelDePeligro})
}

method listaDeCosasQueSuperanUnNivel(unNivelDePeligro) {
  return listaDeCargas.filter({c => c.nivelDePeligrosidad() > unNivelDePeligro})
}


method pesoCarga() {
  return listaDeCargas.sum({p => p.peso()})
}

method estaExcedidoDePeso() {
 return self.pesoTotalDelCamion() >= 2500
}

method algoQuePesaEntre(minimo, maximo) {
  return listaDeCargas.any({p => p.peso().between(minimo, maximo)})
}


}