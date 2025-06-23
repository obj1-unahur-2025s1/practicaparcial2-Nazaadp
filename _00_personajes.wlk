import _01_roles.*
import _02_localidades.*


class Personaje {

  const roles = [guerrero, cazador, brujo]
  var property rolActual = guerrero
  var property localidad
  method esInteligente()
  method esGroso() = self.esInteligente() || self.rolActual().esGroso()
  method potencialOfensivo() = rolActual.potencialOfensivo()

  method crearPersonaje(rolSeleccionado) {
    
    rolActual = self.seleccionarRol(rolSeleccionado)
  }

  method seleccionarRol(rolSeleccionado) = roles.findOrElse({ rol => rol.name() == rolSeleccionado.name() }, guerrero)

  method asignarAUnaLocalidad(localidadAsignada) {
    localidad = localidadAsignada
  }

}

class Orco inherits Personaje {

  override method esInteligente() = false

  override method potencialOfensivo() = rolActual.potencialOfensivo() * 1.1

}

class Humano inherits Personaje {

  override method esInteligente() = self.rolActual().inteligencia() > 50

  // method crearLocalidad() {
  //   const aldea1 = new Aldea(nombre = "aldea1", limiteHabitantes = 10)
  //   const ciudad1 = new Ciudad(nombre = "ciudad1")
  // }

}



