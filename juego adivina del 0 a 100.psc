Algoritmo AdivinaNumeroAvanzado
	Definir secreto, intento, intentosRestantes, diferencia Como Entero
	Definir gano Como Logico
	Definir pista Como Caracter
	
	intentosRestantes <- 7
	gano <- Falso
	
	Escribir "¡Bienvenido al juego Adivina el Número!"
	Escribir "Debes adivinar un número entre 1 y 100. Tienes 7 intentos."
	
	Mientras intentosRestantes > 0 Y NO gano Hacer
		Escribir "Intentos restantes: ", intentosRestantes
		Escribir "Ingresa tu número:"
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
				Escribir "El número es mayor. Pista: ", pista
			Sino
				Escribir "El número es menor. Pista: ", pista
			FinSi
			
			intentosRestantes <- intentosRestantes - 1
		FinSi
	FinMientras
	
	Si gano Entonces
		Escribir "¡Felicidades! Adivinaste el número en ", 7 - intentosRestantes, " intentos."
	Sino
		Escribir "Lo siento, se acabaron los intentos. El número era: ", secreto
	FinSi
FinAlgoritmo
