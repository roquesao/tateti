require_relative "../lib/jugador.rb"

describe "jugador" do

it "El jugador 1 presiona un boton" do
	jugador1 = Jugador.new
	jugador1.presionarboton 1 1 .should == "El turno es de X"
end

it "El jugador 1 presiona un boton y cambia el turno" do
	jugador1 = Jugador.new
    jugador1.presionarboton 1 1
	jugador1.presionarboton 1 1 .should == "El turno es de O"	
end



end
