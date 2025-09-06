

//-----------------------------------  PAQUETE   --------------------------------------------------------

object paquete {
	var  property  pago = true	
	var property destino = matrix 

	method pudoEntregarseADestinoPor(mensajero) {
		return self.pago() && destino.dejaPasarA(mensajero) 
	}

}
//-----------------------------------Destinos--------------------------------------------------------

object puenteBrooklyn{

	method dejaPasarA(mensajero) {
	  return mensajero.peso() < 1000
	}

}
object matrix{

	method dejaPasarA(mensajero) {
	  return  mensajero.puedeLlamar()
	}

}

//--------------------------------------------------------------------
// Personas Mensajeras
object jeanGrey {
	var property peso =  65
	var property llamar = true
	var property puedeLlamar = true 
}

object neo {
	var property  tieneCredito = true
	var property  peso   = 0 
	method puedeLlamar() {
	  return tieneCredito
	}

}

object sara {
	var property  pesoCorporal = 0
	var  property  vehiculo = moto
	var  property  puedeLlamar = false

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
	  return peso + ( self.acoplados() * pesoAcoplado) 
	}

}
//--------------------------------------------------------------------------