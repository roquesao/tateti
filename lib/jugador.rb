class Jugador
def initialize
	@@turno = "X"
	@@ttt = [[0,0,0],[0,0,0],[0,0,0]]
end

def presionarboton posicionx, posiciony
	asignarposicion posicionx, posiciony
	if @@turno == "X" then
		@@turno = "O"
	else
		@@turno = "X"
	end
	return "El turno es de #{@@turno}"
end

def asignarposicion posicionx, posiciony
	@@ttt[posicionx][posiciony] = @@turno
	
end

end
