require_relative "../lib/jugador.rb"

describe "jugador" do

it "El jugador 1 presiona un boton" do
	jugador1 = Jugador.new
	jugador1.presionarboton(1, 1).should == "0"
end

it "El jugador 1 presiona un boton y cambia el turno" do
	jugador1 = Jugador.new
    jugador1.presionarboton(1, 1)
	jugador1.presionarboton(1, 1).should == "X"	
end

it "El jugador 1 presiona la posicion 0,0 el vector asigna su turno en la misma posicion" do
	jugador1 = Jugador.new
	jugador1.presionarboton(0, 0)
	@matriz = jugador1.devolvermatriz
	@matriz[0][0].should == "X"
end

it "El jugador 2 presiona la posicion 0,1 el vector asigna su turno en la misma posicion" do
	jugador1 = Jugador.new
	jugador1.presionarboton(0, 0)
	jugador1.presionarboton(0, 1)
	@matriz = jugador1.devolvermatriz
	@matriz[0][1].should == "0"
end



end
