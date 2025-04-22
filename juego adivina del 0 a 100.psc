Algoritmo AdivinaNumeroAvanzado
	Definir secreto, intento, intentosRestantes, diferencia Como Entero
	Definir gano Como Logico
	Definir pista Como Caracter
	
	intentosRestantes <- 7
	gano <- Falso
	
	Escribir "�Bienvenido al juego Adivina el N�mero!"
	Escribir "Debes adivinar un n�mero entre 1 y 100. Tienes 7 intentos."
	
	Mientras intentosRestantes > 0 Y NO gano Hacer
		Escribir "Intentos restantes: ", intentosRestantes
		Escribir "Ingresa tu n�mero:"
		Leer intento
		
		Si intento = secreto Entonces
			gano <- Verdadero
		Sino
			diferencia <- Abs(secreto - intento)
			
			Si diferencia > 30 Entonces
				pista <- "Muy lejos"
			Sino
				Si diferencia > 10 Entonces
					pista <- "Cerca"
				Sino
					pista <- "Muy cerca"
				FinSi
			FinSi
			
			Si intento < secreto Entonces
				Escribir "El n�mero es mayor. Pista: ", pista
			Sino
				Escribir "El n�mero es menor. Pista: ", pista
			FinSi
			
			intentosRestantes <- intentosRestantes - 1
		FinSi
	FinMientras
	
	Si gano Entonces
		Escribir "�Felicidades! Adivinaste el n�mero en ", 7 - intentosRestantes, " intentos."
	Sino
		Escribir "Lo siento, se acabaron los intentos. El n�mero era: ", secreto
	FinSi
FinAlgoritmo
