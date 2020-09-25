class Dependencia {
	const flotaDeRodados = new List()
	var empleados
	method agregarAFlota(rodado){
		flotaDeRodados.add(rodado)
	}
	method quitarDeFlota(rodado){
		flotaDeRodados.remove(rodado)
	}
	method pesoTotalFlota() = flotaDeRodados.sum({rodado => rodado.peso()})
	
	method cantidadRodados() = flotaDeRodados.size()

	method estaBienEquipada() = self.cantidadRodados() >= 3 and flotaDeRodados.all({rodado => rodado.velocidadMaxima() >= 100})

	method capacidadTotalEnColor(color) = flotaDeRodados.filter({rodado => rodado.color() == color}).sum({rodado => rodado.capacidad()})
	
	method colorDelRodadoMasRapido() = flotaDeRodados.max({rodado => rodado.velocidadMaxima()}).color()
	
	method capacidadFaltante() = empleados - flotaDeRodados.sum({rodado => rodado.capacidad()})

	method esGrande() = empleados > 40 and self.cantidadRodados() > 5
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
	const property capacidad = 5
	const property peso = 700
}

object interiorPopular{
	const property capacidad = 12
	const property peso = 1000
}

object motorPulenta {
	const property peso = 800
	const property velocidadMaxima = 130
}

object motorBataton {
	const property peso = 500
	const property velocidadMaxima = 80
}

object trafic{
	const pesoBase = 4000
	const property color = "blanco"
	var interior
	var motor
	
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = pesoBase + interior.peso() + motor.peso()
	method configurar(_interior,_motor) {
		interior = _interior
		motor = _motor
	}
}

class AutoEspecial{
	const property capacidad 
	const property peso 
	const property velocidadMaxima
	const property color
}