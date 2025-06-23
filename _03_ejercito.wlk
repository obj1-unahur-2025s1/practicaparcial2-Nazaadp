import _02_localidades.*

class Ejercito {

    const property perteneceALocalidad
    const property potencialOfensivoTotal

    method invadir(localidad) {
      if( self.potencialOfensivoTotal() > localidad.potencialOfensivoTotal() ) {
        localidad.desalojarHabitantes()
        localidad.habitantes() + perteneceALocalidad.habitantes()
      }
    }

    method defender(localidad) {

    }

}