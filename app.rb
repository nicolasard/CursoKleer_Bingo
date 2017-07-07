require 'sinatra'
require './lib/bingo.rb'

@@nroUsuario = 0

get '/' do
    @@nroUsuario = 0
    @@mensajeResultado = ""
    erb :inicio
end

post '/' do
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
