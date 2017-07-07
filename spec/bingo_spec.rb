require './lib/bingo'

describe "Bingo" do
	it 'la máquina tiene un resultado asignado en 7' do
		juego = Juego.new
		resultado = juego.resultadoMaquina
		expect(resultado).to eq 7
	end

     	it 'Usuario ingresó 7 y el resultado es verdadero' do
		juego = Juego.new
		resultado = juego.resultadoMaquina
		juego.ingresarRespuesta(7)
                expect(juego.numeroCorrecto).to eq true
	end
     	it 'Usuario ingresó 4 y el resultado es falso' do
		juego = Juego.new
		juego.ingresarRespuesta(4)
		resultado = juego.resultadoMaquina
                expect(juego.numeroCorrecto).to eq false
	end
end
