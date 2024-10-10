import universidades.*
import profesionales.*

class Empresa{
    var property honorariosReferencia
    const property profesionalesContratados = [] 

    method contratar(unProfesional) {profesionalesContratados.add(unProfesional)}
    method cuantosEstudiaronEn(universidad){
       return profesionalesContratados.count({p => p.universidad() == universidad})
    }
    method profesionalesCaros() =  profesionalesContratados.filter({p => p.honorarios() > honorariosReferencia}).asSet()
    method universidadesFormadoras() {
        return profesionalesContratados.map({p => p.universidad()}).asSet()
    }
    method profesionalMasBarato() = profesionalesContratados.min({p => p.honorarios()})
    method esDeGenteAcotada() = profesionalesContratados.all({p =>p.provinciasDondeTrabaja().size() <= 3})
    method puedeSatisfacerASolicitante(unSolicitante){
        return profesionalesContratados.any({p => unSolicitante.puedeSerAtendidoPor(p)})
    }
}