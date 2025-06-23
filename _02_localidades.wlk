class Localidad {

    const property habitantes = []
    var property nombre

    method asignarUnHabitante(personaje) {
        habitantes.add(personaje)
    }

    method desalojarHabitantes() {
        habitantes.clear()
    }

}

class Aldea inherits Localidad  {

    const property limiteHabitantes

    override method asignarUnHabitante(personaje) {

        if(limiteHabitantes > habitantes.size()) habitantes.add(personaje)
        
    }
  
}

class Ciudad inherits Localidad {
  
}