class Rol {
    const property fuerza
    const property inteligencia

    method name()

    method esGroso() = false

    method potencialOfensivo() = (self.fuerza() * 10)
}

object guerrero inherits Rol (fuerza = 1, inteligencia = 1) {

    override method name() = "guerrero"

    override method esGroso() = fuerza > 50

    override method potencialOfensivo() = (self.fuerza() * 10) + 100
  
}

object cazador inherits Rol (fuerza = 1, inteligencia = 1) {

    var property mascotaCazador = null

    override method name() = "cazador"

    override method esGroso() = mascotaCazador.esLongeva_mascota()

    method asignarMascotaCon(fuerza_mascota, edad_mascota, tieneGarras_mascota) {
        mascotaCazador = new MascotaCazador(fuerza_mascota = fuerza_mascota, edad_mascota = edad_mascota, tieneGarras_mascota = tieneGarras_mascota)
    }

    override method potencialOfensivo() = mascotaCazador.potencialOfensivo_mascota()
  
}

object brujo inherits Rol (fuerza = 1, inteligencia = 1) {

    override method name() = "brujo"

    override method esGroso() = true
  
}

class MascotaCazador {
  var property fuerza_mascota
  var property edad_mascota
  var property tieneGarras_mascota

  method potencialOfensivo_mascota() = if(tieneGarras_mascota) fuerza_mascota * 2 else fuerza_mascota

  method esLongeva_mascota() = edad_mascota > 10
}