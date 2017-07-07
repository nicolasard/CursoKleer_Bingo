Feature: Aplicacion de bingo

Scenario: Verifico que ande la pantalla principal
	When carga la pantalla
	Then veo el texto Bingo

Scenario: Verifico que el usuario ingreso un valor y lo muestra ok
	When carga la pantalla
	And El usuario ingresa el numero "2"
	And El usuario toca el boton enviar
	Then veo el texto Bingo
	And Veo el numero del usuario "2"
