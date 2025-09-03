

object empresa {
	method paqueteFueEntregadoADestino(mensajero, destino) {
	  return paquete.pago() && destino.dejaPasarA(mensajero)
	}

}

object paquete {
	var  property  pago = true	
}
//Destinos
//--------------------------------------------------------

object puenteBrooklyn{

	method dejaPasarA(mensajero) {
	  return mensajero.peso() < 1000
	}

}
object matrix{

	method dejaPasarA(mensajero) {
	  return  mensajero.llamar()
	}

}

//--------------------------------------------------------------------
// Personas Mensajeras
object jeanGrey {
	var property peso =  65
	var property llamar = true
}

object neo {
	var property  llamar = true
	var property  peso   = 0 

}

object sara {
	var property  pesoCorporal = 0
	var  property  vehiculo = moto
	var  property  llamar = false

	method peso() {
	  return  pesoCorporal + vehiculo.peso() 
	}
}

//------------------------------- VEHICULOS      ---------------------
 
object moto {
	
	method peso() = 100  

}
object camion {
	var property peso = 500
	var property pesoAcoplado = 500
	var property acoplados = 0
	

	method peso() {
	  return peso + ( self.acoplados()* pesoAcoplado) 
	}

}
