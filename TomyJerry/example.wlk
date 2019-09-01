object tom{
	var energia = 80
	var posicionAnimal = posicion
	method velocidad(){
		return 5 + (energia / 10)
	}
	
	method puedeAtrapar(raton){
		return self.velocidad() > raton.velocidad()
	}
	
	method correrA(raton){
		energia = 0.5 * self.velocidad() * distancia.entre(self.getPosicion(),raton.getPosicion())
		self.cambiarPosicion(raton.getPosicion().posicionX(),raton.getPosicion().posicionY())
	}
	
	method cambiarPosicion(posX,posY){
		posicionAnimal.posicionX(posX)
		posicionAnimal.posicionY(posY)
	}
	
	method getPosicion(){
		return posicionAnimal
	}
}

object jerry{
	var peso = 3
	var posicionAnimal	 = posicion
	method velocidad(){
		return 10 - peso
	}
	
	method cambiarPosicion(posX,posY){
		posicionAnimal.posicionX(posX)
		posicionAnimal.posicionY(posY)
	}
	
	method getPosicion(){
		return posicionAnimal
	}
}

object posicion{
	var property posicionX = 0
	var property posicionY = 0
	
	method getPosicion(){
		return posicionX -> posicionY
	}	
}

object distancia{
	method entre(posUno,posDos){
		return (
					(posUno.posicionX() - posDos.posicionX()).square() + 
					(posUno.posicionY() - posDos.posicionY()).square()
			   ).squareRoot()		
	}
}