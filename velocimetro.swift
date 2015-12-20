import UIKit

//ENUMERACION QUE CONTIENE LAS DISTINTAS VELOCIDADES
//A LAS QUE PUEDE CORRER EL AUTO

enum Velocidades : Int{

    case Apagado = 0
    case VelocidadBaja = 20 
    case VelocidadMedia = 50 
    case VelocidadAlta = 120
	
	//INICIALIZADOR DE LAS ENUMERACION
	//TIENE COMO VALOR POR DEFECTO Apagado = 0
	
	init( VelocidadInicial : Velocidades){
	    self = VelocidadInicial
	}
    
}


//CLASE AUTO
class Auto{
    var velocidad = Velocidades(VelocidadInicial : Velocidades.Apagado)
    var estadoNumerico : Int
	
	//INICIALIZADOR DE LA CLASE AUTO
	
    init(estadoNumerico : Int){
       self.estadoNumerico = estadoNumerico
    }
	
	//METODO QUE PERMITE CAMBIAR DE VELOCIDAD
	func cambioDeVelocidad(let apuntador : Int) ->  ( actual : Int, velocidadEnCadena : String ){	  
	     var descripcion : String
	     if apuntador == 1{
		     descripcion = "Apagado"
		 }
		 else if apuntador == 2{
		     velocidad = Velocidades.VelocidadBaja
		     estadoNumerico = Velocidades.VelocidadBaja.rawValue
		     descripcion = "Velocidad Baja"		 
		 }
		 else if apuntador == 3{
		     velocidad = Velocidades.VelocidadMedia
		     estadoNumerico = Velocidades.VelocidadMedia.rawValue
		     descripcion = "Velocidad Media"		 
		 }
		 else if apuntador == 4{
		     velocidad = Velocidades.VelocidadAlta
		     estadoNumerico = Velocidades.VelocidadAlta.rawValue
		     descripcion = "Velocidad Alta"		 
		 }
		 else if apuntador > 4 || apuntador <= 20{
		     if apuntador % 2 != 0{
			     velocidad = Velocidades.VelocidadMedia
			     estadoNumerico = Velocidades.VelocidadMedia.rawValue
		         descripcion = "Velocidad Media"		  
			 }
			 else{
			     velocidad = Velocidades.VelocidadAlta
		    	 estadoNumerico = Velocidades.VelocidadAlta.rawValue
		         descripcion = "Velocidad Alta"		 
			 }	 
		 }
		 else{
		     velocidad = Velocidades.Apagado
  		     estadoNumerico = Velocidades.Apagado.rawValue
  		     descripcion = "Apagado"
		 }
		 
		 let resultado = (estadoNumerico, descripcion)
		 return resultado
			 
			 //CREAMOS UNA TUPLA CON LOS VALORRES A REGRESAR POR LA FUNCION
			 
	}   
}
var objeto = Auto(estadoNumerico : Velocidades(VelocidadInicial : Velocidades.Apagado).rawValue)

for apuntador in 1...20{
     var resultado = objeto.cambioDeVelocidad(apuntador)
	 print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}