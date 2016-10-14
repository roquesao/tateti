class Jugador
def initialize
	@turno = "X"
	@ttt = [[0,0,0],[0,0,0],[0,0,0]]
end

def asignarposicion posicionx, posiciony
	@ttt[posicionx][posiciony] = @turno
end

def presionarboton posicionx, posiciony
	asignarposicion posicionx, posiciony
	if @turno == "X" then
		@turno = "0"
	else
		@turno = "X"
	end
	return @turno
end

def devolverTurno
	return @turno
end

def devolvermatriz
	return @ttt
end


end
