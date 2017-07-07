class Juego
	def initialize()
	@respuesta = 0
	end

	def resultadoMaquina()
		if @numAleatorio == nil
		   @numAleatorio=7 
		end
		return @numAleatorio
	end

	def forzar(numero)
		@numAleatorio=numero
	end

	def ingresarRespuesta (numero)
	   @respuesta = numero
	end

	def numeroCorrecto()
	   if @respuesta == resultadoMaquina()
		return true
           else
		return false
	   end 
	end
end
