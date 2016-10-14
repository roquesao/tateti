require 'sinatra'
require_relative "./lib/jugador.rb"

@@jugador=Jugador.new

get '/' do
	@turno = @@jugador.devolverTurno
    erb :pantalla_tateti 
end

get '/presionarBoton' do
	@turno = @@jugador.presionarboton 1,1
    erb :pantalla_tateti 
end
