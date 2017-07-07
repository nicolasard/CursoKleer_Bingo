class Juego
	def initialize()
	@respuesta = 0
	end

	def resultadoMaquina()
		7
	end

	def respuestaUsuario()
	   @respuesta 
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
