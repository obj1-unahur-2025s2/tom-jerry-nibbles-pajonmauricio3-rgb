import ratas.*
object tom {
    var energia = 50
    method comer(raton){
        energia = energia + 12 + raton.peso()
    }
    method correr(metros){
        energia = energia - metros/2
    }
    method velocidadMaxima(){
        return 5 + energia / 10
    }
    method puedeCazar(distanciaEnMetros){
        return energia > distanciaEnMetros #para revisar
    } 
    method cazar(raton, distancia) {
        if(self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comer(raton)
        }
    }
}

