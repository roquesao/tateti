require 'sinatra'
require_relative "./lib/jugador.rb"



get '/' do
	@@jugador=Jugador.new
	@turno = @@jugador.devolverTurno
	@ttt = @@jugador.devolvermatriz
    erb :pantalla_tateti 
end

get '/pos/:x/:y'  do
	x = params[:x].to_i
	y = params[:y].to_i
	@turno = @@jugador.presionarboton x,y
	@ttt = @@jugador.devolvermatriz
	@mensaje = @@jugador.gano
    erb :pantalla_tateti 
end




