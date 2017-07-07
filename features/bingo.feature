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

Scenario: El usuario ingresa 7 y da ok
	Given carga la pantalla
	And El usuario ingresa el numero "7"
	When El usuario toca el boton enviar
	Then Veo el numero del usuario "7"
	And Se muestra Adivinaste

Scenario: El usuario ingresa 4 y no da ok
	Given carga la pantalla
	And El usuario ingresa el numero "4"
	When El usuario toca el boton enviar
	Then Veo el numero del usuario "4"
	And Se muestra No Adivinaste
