class Dependencia {
	const flotaDeRodados = new List()
	var empleados
	method agregarAFlota(rodado){
		flotaDeRodados.add(rodado)
	} 
	method quitarDeFlota(rodado){
		
	}
	method pesoTotalFlota(){
		
	}
	method estaBienEquipada(){
		
	}
	method capacidadTotalEnColor(color){
		
	}
	method colorDelRodadoMasRapido(){
		
	}
	method capacidadFaltante(){
	}
	method esGrande(){
		
	}	
}
class Corsa{
	const property capacidad = 4
	const property peso = 1300
	const property velocidadMaxima = 150
	const property color
}
object tanqueAdicional{
	const property capacidad = 4
	const property peso = 150
	const property velocidadMaxima = 120
}
object tanqueComun{
	const property capacidad = 3
	const property peso = 0
	const property velocidadMaxima = 110
}

class Kwid{
	const property color = "azul"
	const tanque
	const peso = 1200
	
	method capacidad() = tanque.capacidad()
	method peso() = peso + tanque.peso()
	method velocidadMaxima() = tanque.velocidadMaxima()
}
object interiorComodo{
	
}
object interiorPopular{
	
}
object trafic{
	var interior
	var motor
	
}
class AutoEspecial{
	const property capacidad 
	const property peso 
	const property velocidadMaxima
	const property color
}