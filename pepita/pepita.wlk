object pepita {

	var energia = 100

	method volar(km) {
		energia -= 10 + km
	}

	method comer(comida) {
		energia += comida.energia()
	}

	method estaMuerta() = energia <= 0

	method estaCansada() = energia < 50

	method estaFeliz() = energia.between(80, 120)

}

object manzana {

	method energia() = 80

}

object mijo {

	var mojado = false

	method estaMojado() = mojado

	method energia() {
		if (self.estaMojado()) {
			return 2
		} else {
			return 10
		}
	}

	method mojar() {
		mojado = true
	}

	method secar() {
		mojado = false
	}

}

object alpiste {

	method energia() = 5

}

