#ejercicio 5 . 
Feature: Tablero de Ta-Te-Ti
Esta es una aplicacion del tablero de Ta-Te-Ti

Scenario: Portada
	Given Empieza el juego 
	Then Veo "Turno para : X"

Scenario: Jugador X hace click
	Given Empieza el juego 
	When Jugador "X" hace click
	Then Veo "Turno para : 0"

Scenario: Jugador X hace click y muestra X en el tablero
	Given Empieza el juego 
	When Jugador "X" hace click
	Then Veo "X" en la posicion 0,0



