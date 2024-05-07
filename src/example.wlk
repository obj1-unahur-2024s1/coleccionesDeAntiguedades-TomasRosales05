object registroProduccion {
	
	const registroDePiezas = []
	
	method agregarAlRegistro(cantPiezas)
	{
		registroDePiezas.add(cantPiezas)
	}
	
	method quitarAlRegistro(cantPiezas)
	{
		registroDePiezas.remove(cantPiezas)
	}
	
	method algunDiaSeProdujo(cantidad)
	{
		return registroDePiezas.contains(cantidad)
	}
	
	method maximoValorProduccion()
	{
		return registroDePiezas.max()
	}
	
	method produccionesSuperioresAl(cuanto)
	{
		return registroDePiezas.filter({r => r > cuanto})
	}
	
	method produccionEsAcortada(n1, n2)
	{
		return registroDePiezas.all({r => r.between(n1, n2)})
	}
	
	method valoresDeProduccionPares()
	{
		return registroDePiezas.filter({r => r.even()})
	}
	
	method produccionesSumando(n)
	{
		return registroDePiezas.map({r => r + n})
	}
	
	method totalProducido()
	{
		return registroDePiezas.sum() //todos números
	}
	
	method ultimoValorDeProduccion()
	{
		return registroDePiezas.last()
	}
	
	method primerValorDeProduccion()
	{
		return registroDePiezas.first()
	}
	
	method cantidadProduccionesMayorALaPrimera()
	{
		return registroDePiezas.count({r => r > self.primerValorDeProduccion()})
	}
}
