require 'sinatra'
require './lib/bingo.rb'

@@nroUsuario = 0
@@primeraVez = true

get '/' do
    @@nroUsuario = 0
    @@mensajeResultado = ""
    @@primeraVez = true
    erb :inicio
end

post '/' do
    @@primeraVez = false
    @@nroUsuario = params["nroUsuario"].to_i
    obing = Juego.new
    obing.ingresarRespuesta(@@nroUsuario)

    if obing.numeroCorrecto()
	@@mensajeResultado = "Adivinaste!"
    else
	@@mensajeResultado = "No Adivinaste!"
    end
    erb :inicio
end
