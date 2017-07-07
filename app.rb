require 'sinatra'

@@nroUsuario = 0

get '/' do
    @@nroUsuario = 0
    erb :inicio
end

post '/' do
    @@nroUsuario = params["nroUsuario"].to_i
    erb :inicio
end
