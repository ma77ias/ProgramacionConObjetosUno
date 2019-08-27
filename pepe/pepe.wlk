object pepe {

	var categoria = gerente
	var faltas = 0

	method sueldoNeto() {
		return categoria.sueldo()
	}

	method cambiarCategoria(nuevaCategoria) {
		categoria = nuevaCategoria
	}

	method aumentarFaltas(cantidadFaltas) {
		faltas += cantidadFaltas
	}

}

object gerente {

	method sueldo() = 15000

}

object cadete {

	method sueldo() = 20000

}

object bonoPorResultado {

	method Porcentaje(neto) = neto * 0.1

	method MontoFijo() = 800

	method Nulo() = 0

}

object bonoPorPresentismo {

	method Normal(faltas) {
		var valorBono = 0
		if (faltas == 0) {
			valorBono = 2000
		} else if (faltas == 1) {
			valorBono = 1000
		}
		return valorBono
	}

	method Ajuste(faltas) = if (faltas == 0) 100 else 0

	method Demagogico(neto) = if (neto < 18000) 500 else 300

	method Nulo() = 0

}

