class Jugador
def initialize
	@turno = "X"
	@ttt = [[0,0,0],[0,0,0],[0,0,0]]
	3.times {|x| 3.times {|y| @ttt[x][y]="LIBRE"}}
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

def gano
	flag = 0
	if ((@ttt[0][0] == @ttt[0][1]) and (@ttt[0][0] == @ttt[0][2]) and (@ttt[0][0] != "LIBRE")) then
		flag = 1 	
	end
	
	if ((@ttt[1][0] == @ttt[1][1]) and (@ttt[1][0] == @ttt[1][2]) and (@ttt[1][0] != "LIBRE")) then
		flag = 1 	
	end
		
	if ((@ttt[2][0] == @ttt[2][1]) and (@ttt[2][0] == @ttt[2][2]) and (@ttt[2][0] != "LIBRE")) then
		flag = 1 	
	end
	
	if ((@ttt[2][0] == @ttt[1][1]) and (@ttt[2][0] == @ttt[0][2]) and (@ttt[2][0] != "LIBRE")) then
		flag = 1 	
	end

	if ((@ttt[1][0] == @ttt[1][1]) and (@ttt[1][0] == @ttt[1][2]) and (@ttt[1][0] != "LIBRE")) then
		flag = 1 	
	end
	
	if ((@ttt[0][2] == @ttt[1][1]) and (@ttt[0][2] == @ttt[2][1]) and (@ttt[0][2] != "LIBRE")) then
		flag = 1 	
	end
	
	if ((@ttt[0][0] == @ttt[1][0]) and (@ttt[0][0] == @ttt[2][0]) and (@ttt[0][0] != "LIBRE")) then
		flag = 1 	
	end

	if ((@ttt[0][1] == @ttt[1][1]) and (@ttt[0][1] == @ttt[2][1]) and (@ttt[0][1] != "LIBRE")) then
		flag = 1 	
	end
	
	if ((@ttt[0][0] == @ttt[1][1]) and (@ttt[0][0] == @ttt[2][2]) and (@ttt[0][0] != "LIBRE")) then
		flag = 1 	
	end

	if ((@ttt[0][2] == @ttt[1][2]) and (@ttt[0][2] == @ttt[2][2]) and (@ttt[0][2] != "LIBRE")) then
		flag = 1 	
	end

	if flag  == 1 then 
		if @turno == "X" then
			@turno = "0"
		else
			@turno = "X"
		end	
	 	return "TATETI: #{@turno}"
	else
		return " "	
	end
end


end
