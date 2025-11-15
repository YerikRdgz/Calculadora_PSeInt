Proceso CalculadoraMultifuncional
    Definir opcion Como Entero;
	
    Repetir
        Limpiar Pantalla;
        Escribir "====== CALCULADORA MULTIFUNCIONAL ======";
        Escribir "1. Operaciones Básicas";
        Escribir "2. Figuras Geométricas (Área, Radio, Diámetro)";
        Escribir "3. Estadística Básica";
        Escribir "4. Sucesión de Fibonacci";
        Escribir "5. Salir";
        Escribir "Selecciona una opción: ";
        Leer opcion;
		
        Segun opcion Hacer
            1:
                OperacionesBasicas;
            2:
                MenuFiguras;
            3:
                Estadistica;
            4:
                Fibonacci;
            5:
                Escribir "Saliendo...";
            De Otro Modo:
                Escribir "Opción no válida.";
        FinSegun
		
        Escribir "Presiona ENTER para continuar...";
        Leer basura;
		
    Hasta Que opcion = 5
FinProceso
SubProceso  Estadistica
	// DEFINICIÓN DE VARIABLES
	Definir n, i, j Como Entero
	Definir suma, media, mediana, moda, aux,op Como Real
	Definir max_frecuencia, frecuencia_actual Como Entero
	
	//Pedir las operacion a realizar 
	Escribir "======Estadística Básica======";
	Escribir "1. Mediana";
	Escribir "2. Media ";
	Escribir "3. moda";
	leer op
	// ENTRADA DE DATOS 
	Escribir "Cuántos números vas a ingresar?"
	Leer n
	
	// Dimensionamos el arreglo con el tamaño dado por el usuario
	Dimension arreglo[n]
	
	suma <- 0
	Escribir "Ingresa los " , n, " números (uno por uno):"
	//obtener los datos del arreglo
	Para i <- 1 Hasta n Hacer
		Escribir "Número ", i, ": " Sin Saltar
		Leer arreglo[i]
		suma <- suma + arreglo[i]
	FinPara
	//ordenar el arreglo
	Para i <- 1 Hasta n-1 Hacer
		Para j <- 1 Hasta n-i Hacer
			// Si el número actual es mayor al siguiente, intercambiar
			Si arreglo[j] > arreglo[j+1] Entonces
				aux <- arreglo[j]
				arreglo[j] <- arreglo[j+1]
				arreglo[j+1] <- aux
			FinSi
		FinPara
	FinPara
	//definir que hacer en cada caso
	segun op Hacer
		1:	Si n MOD 2 = 0 Entonces
				// para Cantidad PAR de datos
				mediana <- (arreglo[n/2] + arreglo[n/2 + 1]) / 2
			Sino
				// para Cantidad IMPAR de datos
				mediana <- arreglo[trunc(n/2) + 1]
			FinSi
			Escribir "la mediana es " mediana 
		2:media <- suma / n
			Escribir "la media es " media
		3:max_frecuencia <- 0
			frecuencia_actual <- 1
			moda <- arreglo[1] 
			Para i <- 1 Hasta n-1 Hacer
				Si arreglo[i] = arreglo[i+1] Entonces
					// El número es igual al anterior, aumentamos la frecuencia actual
					frecuencia_actual <- frecuencia_actual + 1
				Sino
					// El número cambió
					Si frecuencia_actual > max_frecuencia Entonces
						// Esta frecuencia es la nueva máxima
						max_frecuencia <- frecuencia_actual
						moda <- arreglo[i] // Guardamos el número que tenía esa frecuencia
					FinSi
					frecuencia_actual <- 1 // Reiniciamos el conteo para el nuevo número
				FinSi
			FinPara
			Si frecuencia_actual > max_frecuencia Entonces
				max_frecuencia <- frecuencia_actual
				moda <- arreglo[n] 
			FinSi
			Escribir "la moda es " moda
		De Otro Modo:
            Escribir "Opción inválida.";
	FinSegun

FinSubProceso

SubProceso OperacionesBasicas 
    Definir a, b, op Como Real;
    
    Escribir "OPERACIONES BÁSICAS";
    Escribir "1. Suma";
    Escribir "2. Resta";
    Escribir "3. Multiplicación";
    Escribir "4. División";
    Leer op;
	
    Escribir "Ingresa el primer número: ";
    Leer a;
	
    Escribir "Ingresa el segundo número: ";
    Leer b;
	
    Segun op Hacer
        1: Escribir "Resultado: ", a + b;
        2: Escribir "Resultado: ", a - b;
        3: Escribir "Resultado: ", a * b;
        4:
            Si b = 0 Entonces
                Escribir "Error: No se puede dividir entre 0.";
            SiNo
                Escribir "Resultado: ", a / b;
            FinSi
        De Otro Modo:
            Escribir "Opción inválida.";
    FinSegun
FinSubProceso



SubProceso MenuFiguras
    Definir op Como Entero;
    Escribir "FIGURAS GEOMÉTRICAS";
    Escribir "1. Círculo";
    Escribir "2. Cuadrado";
    Escribir "3. Triángulo";
    Escribir "4. Trapecio";
    Leer op;
	
    Segun op Hacer
        1: 
			Circulo;
        2: 
			Cuadrado;
        3: 
			Triangulo;
        4:
			Trapecio;
        De Otro Modo:
            Escribir "Opción inválida.";
    FinSegun
FinSubProceso


SubProceso Trapecio
	//  Definición de Variables 
	Definir base_mayor, base_menor, altura, area Como Real
	Escribir "Por favor, ingresa la longitud de la Base Mayor:"
	Leer base_mayor
	
	Escribir "Ahora, ingresa la longitud de la Base Menor:"
	Leer base_menor
	
	Escribir "Finalmente, ingresa la altura (h):"
	Leer altura
	
	// Cálculo del Área 
	area <- ((base_mayor + base_menor) * altura) / 2
	
	// Mostrar el Resultado
	Escribir "El área del trapecio es: ", area
FinSubProceso
SubProceso Circulo
    Definir r, area, diametro Como Real;
	
    Repetir
        Escribir "Ingresa el radio del círculo: ";
        Leer r;
    Hasta Que r > 0
	
    area <- PI * r * r;
    diametro <- r * 2;
	
    Escribir "Área: ", area;
    Escribir "Radio: ", r;
    Escribir "Diámetro: ", diametro;
FinSubProceso



SubProceso Cuadrado
    Definir lado, area, diag Como Real;
    
    Repetir
        Escribir "Ingresa el lado del cuadrado: ";
        Leer lado;
    Hasta Que lado > 0;
	
    area <- lado * lado;
    diag <- lado * raiz(2);
	
    Escribir "Área: ", area;
    Escribir "Diagonal: ", diag;
FinSubProceso



SubProceso Triangulo
    Definir base, altura, area Como Real;
	
    Repetir
        Escribir "Base: ";
        Leer base;
        Escribir "Altura: ";
        Leer altura;
    Hasta Que base > 0 Y altura > 0
	
    area <- (base * altura) / 2;
	
    Escribir "Área: ", area;
FinSubProceso



SubProceso Fibonacci
    Definir n, a, b, c Como Entero;
	
    Escribir "¿Cuántos términos deseas generar?";
    Leer n;
	
    a <- 0;
    b <- 1;
	
    Escribir "Sucesión de Fibonacci:";
	
    Para i <- 1 Hasta n
        Escribir a;
        c <- a + b;
        a <- b;
        b <- c;
    FinPara
FinSubProceso
