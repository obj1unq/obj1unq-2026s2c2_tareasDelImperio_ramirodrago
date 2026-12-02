class Tarea{
 var property jornadaLaboral   
    method recursosProducidos(){
        return 50 * (self.tiempo() - self.desgaste) * self.esfuerzo
    }
    
    method tiempo()
    method desgaste()
    method esfuerzo()
}
class Siembra inherits Tarea{
 var property siembraDe   
    override method desgaste(){
        if(self.jornadaLaboral() <= self.tiempo()) {1}
            else {self.jornadaLaboral() - self.tiempo()}
  }
}
class SiembraEnElValle inherits Siembra{
 var epocaDelAño = null
    override method tiempo(){
        return epocaDelAño.tiempoDeTrabajo()
    }
    override method esfuerzo(){
        siembraDe.esfuerzo()    
    }
    method cambiarTemporada(epoca){
        epocaDelAño = epoca
    }        
}
object epocaDeLuvia {
    method tiempoDeTrabajo(){
        return 0
    }
}
object epocaDeSiembra {
    method tiempoDeTrabajo(){
        return 8
    }
}
class SiembraEnTerraza inherits Siembra {
    override method recursosProducidos(){
        super() * 3
    }
    override method tiempo(){
        return 6
    }
}
object papa {
    method esfuerzo(){
        return 1.2
    }
}
object maiz {
    method esfuerzo(){
        return 1.5
    }
}
class Mensaje inherits Tarea{  
 var camino    
    override method tiempo(){
        return jornadaLaboral
    }
    override method esfuerzo(){
        return 1.4
    }
    override method desgaste(){
        return self.tiempo() / 4
    }
}
class MensajeImperial inherits Mensaje {
  override method esfuerzo(){
    return 1.8
  }
  override method tiempo(){
    return (super() - 2).max(1)
  }
}
object rutaTamboCentral {
}
object caminoDelSapaInca { 
}
class Habitantes{
    
}