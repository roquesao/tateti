require 'sinatra'
require_relative "./lib/jugador.rb"

get '/' do
	@@jugador=Jugador.new
    erb :pantalla_tateti 
end
