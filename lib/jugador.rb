class Jugador
def initialize
	@@turno = nil
end

def presionarboton
	if @@turno == "X" then
		@@turno = "O"
	else
		@@turno = "X"
	end
	return "El turno es de #{@@turno}"
end

end
