class Persona{
    const property provincia
    method puedeSerAtendidoPor(unProfesional){
        return unProfesional.provinciasDondeTrabaja().contains(provincia)
    }
}


class Institucion{
    const property uniReconocidas 
    method agregarUniversidad(unaUniversidad){uniReconocidas.add(unaUniversidad)}
    method puedeSerAtendidoPor(unProfesional){
        return uniReconocidas.contains(unProfesional.universidad())
    }
}


class Club{
    const property provinciasDondeEsta
    method agregarProvincia(unaProvincia){
        provinciasDondeEsta.add(unaProvincia)
    }
    method puedeSerAtendidoPor(unProfesional){
        return !provinciasDondeEsta.asSet().intersection(unProfesional.provinciasDondeTrabaja().asSet()).isEmpty()
    }
}