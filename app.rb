require 'sinatra'

@@nroUsuario = 0

get '/' do
    @@nroUsuario = 0
    @@mensajeResultado = ""
    erb :inicio
end

post '/' do
    @@nroUsuario = params["nroUsuario"].to_i
    if @@nroUsuario == 7
	@@mensajeResultado = "Adivinaste!"
    else
	@@mensajeResultado = "No Adivinaste!"
    end
    erb :inicio
end
