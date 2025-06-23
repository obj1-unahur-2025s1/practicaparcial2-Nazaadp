class Localidad {

    const property habitantes = []
    var property nombre
    var property potencialOfensivoTotal = 0
    method defender() = potencialOfensivoTotal

    method asignarUnHabitante(personaje) {
        if(personaje.localidad() != null) personaje.localidad().removerUnHabitante(personaje)
        habitantes.add(personaje)
        personaje.asignarAUnaLocalidad(self)
        potencialOfensivoTotal += personaje.potencialOfensivo()
        habitantes.sortBy({ perFuerte, perDebil => perFuerte.potencialOfensivo() > perDebil.potencialOfensivo() })
    }

    method removerUnHabitante(personaje) {
        habitantes.remove(personaje)
    }

    method desalojarHabitantes() {
        habitantes.clear()
    }

    method invadir(localidad) {
        if (potencialOfensivoTotal > localidad.defender()) {
            localidad.desalojarHabitantes()
            habitantes.forEach({ invasor => 
                localidad.asignarUnHabitante(invasor)
            })
        }
    }    

}

class Aldea inherits Localidad  {

    const property limiteHabitantes

    override method asignarUnHabitante(personaje) {

        if(limiteHabitantes > habitantes.size() ) {
            super(personaje)
        }
    }
  
}

class Ciudad inherits Localidad {

    override method defender() = potencialOfensivoTotal + 300
  
}