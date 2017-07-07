require './lib/bingo'

describe "Bingo" do
	it 'la máquina tiene un resultado asignado en 7' do
		juego = Juego.new
		resultado = juego.resultadoMaquina
		expect(resultado).to eq 7
	end
end
