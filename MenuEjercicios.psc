//Bienvenidos. Taller de conocimiento y habilidad en lògica de programaciòn. 
//Proyecto Técnico Laboral como Asistente de Desarrollo de Software.
//Presentado por: ISABELA BLANDON ABADIA- Politécnico PIO.
Proceso MenuEjercicios
	Repetir
	//Ejercicio1
	//Ejercicio2
	//Ejercicio3
	//Ejercicio4
	//Ejercicio5
	//op 6 salir	
	Definir op Como Real
	Escribir "Elija una opciòn"
	Escribir "Elija 1 para Ejercicio1"
	Escribir "Elija 2 para Ejercicio2"
	Escribir "Elija 3 para Ejercicio3"
	Escribir "Elija 4 para Ejercicio4"
	Escribir "Elija 5 para Ejercicio5"
	Escribir "Elija 6 para salir"
	Leer op
	segun op Hacer
		1:
			Definir edad Como Entero
			Escribir "Por favor ingrese su edad"
			Leer edad
			
			si edad < 12 Entonces
				Escribir "Eres un niño"
			SiNo
				si edad >= 12 y edad <= 17 Entonces
					Escribir "Eres un adolescente"
				sino
					si edad >= 18 y edad <= 64 Entonces
						Escribir "Eres un adulto"
					SiNo
						Escribir "Eres un adulto mayor"
					FinSi
				FinSi
			FinSi
		2:
			Definir palabra Como Caracter
			Definir N, x, c Como Entero
			Escribir "Ingresa una palabra"
			Leer palabra
			N = Longitud(palabra)
			x<-1
			c<-0
			
			Mientras x <= N Hacer
				Segun Subcadena(palabra, x,x) Hacer
					"a" o "A":
						c = c + 1
					"e" o "E":
						c = c + 1
					"i" o "I":
						c = c + 1
					"o" o "O":
						c = c + 1
					"u" o "U":
						c = c + 1
				FinSegun
				x = x + 1
			FinMientras
			Escribir "La frase ", palabra, " tiene ", c, " vocales "
		3:
			Definir N Como Entero
			Escribir "Escriba la cantidad de notas:  "
			Leer N
			
			sumaAprobados <- 0
			sumaDesaprobados <- 0
			cantidadAprobados <- 0
			cantidadDesaprobados <- 0
			
			para i <- 1 Hasta N
				Escribir "Ingresa la nota ", i, ":"
				Leer nota
				si nota >= 6 Entonces
					sumaAprobados <- sumaAprobados + 1
					cantidadAprobados <- cantidadAprobados + 1
				SiNo
					sumaDesaprobados <- sumaDesaprobados + 1
					cantidadDesaprobados <- cantidadDesaprobados + 1
				FinSi
			FinPara
			si cantidadAprobados > 0 Entonces
				promedioAprobados <- sumaAprobados / cantidadAprobados
			SiNo
				promedioAprobados <- 0
			FinSi
			
			Si cantidadDesaprobados > 0 Entonces
				promedioDesaprobados <- sumaDesaprobados / cantidadDesaprobados
			Sino
				promedioDesaprobados <- 0
			FinSi
			
			porcentajeAprobados <- (cantidadAprobados / N) * 100
			porcentajeDesaprobados <- (cantidadDesaprobados / N) * 100
			
			Escribir "Cantidad de Asignaturas aprobadas: ", cantidadAprobados
			Escribir "Cantidad de Asignaturas desaprobadas: ", cantidadDesaprobados
			Escribir "Promedio de Asignaturas aprobadas: ", promedioAprobados
			Escribir "Promedio de Asignaturas desaprobadas: ", promedioDesaprobados
			Escribir "Porcentaje de Asignaturas aprobadas: ", porcentajeAprobados, "%"
			Escribir "Porcentaje de Asignaturas desaprobadas: ", porcentajeDesaprobados, "%"
		4:
			Definir a, b, fila, columna, suma, matriz Como Entero
			
			Escribir "Ingresa las filas de la matriz"
			leer fila
			Escribir "Ingresa las columnas de la matriz"
			leer columna
			
			Dimension matriz[fila,columna]
			para a = 1 Hasta fila Con Paso 1 Hacer
				para b = 1 Hasta columna Con Paso 1 Hacer
					Escribir "Ingresa un numero en la fila ",a," columna ",b
					leer matriz(a,b)
				FinPara
			FinPara
			suma = 0
			para a = 1 Hasta fila Con Paso 1 Hacer
				para b = 1 Hasta columna Con Paso 1 Hacer
					suma = suma + matriz(a,b)
				FinPara
			FinPara
			Escribir "La suma de los elementos de la matriz es: ", suma
		5:
			Definir empleado Como Caracter
			Escribir "Escriba el nombre del empleado:  "
			Leer empleado
			
			Definir puntaje Como Real
			Escribir "Su puntaje en la evaluacion fue:  "
			leer puntaje
			
			si puntaje = 0.0 Entonces
				Escribir "Inaceptable ", " El valor a cobrar es ", puntaje * 2400000
			SiNo
				si puntaje = 0.4 Entonces
					Escribir "Aceptable ", " El valor a cobrar es ", puntaje * 2400000
				sino
					si puntaje >= 0.6 Entonces
						Escribir "Meritorio ", " El valor a cobrar es ", puntaje * 2400000
					SiNo
						Escribir "El puntaje ", puntaje, " no aplica para ser nivelado"
					FinSi
				FinSi
				
			FinSi
		6:
			Escribir "Salir"
			leer op
		De Otro Modo:
			Escribir "La opcion no es valida"
	FinSegun
Hasta Que op = 6
FinProceso

