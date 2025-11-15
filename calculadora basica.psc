Algoritmo calculadora

		Definir opcion, num1, num2, resultado Como Real;  //aqui definimo las variables como real o entero
		//este es el menu que se muestra al usuario
		Escribir "Calculadora Básica";
		Escribir "Seleccione la operación a realizar:";
		Escribir "1. Suma";
		Escribir "2. Resta";
		Escribir "3. Multiplicación";
		Escribir "4. División";
		Leer opcion;    //aqui se lee la opcion que ingrese el usuario 
		
		//aqui se ingresa los numeros que el usuario diga
		Escribir "Ingrese el primer número:";
		Leer num1;
		Escribir "Ingrese el segundo número:";
		Leer num2;
		// aqui segun la opcion que el usuario eligio se hace lo que esta dentro de cada caso
		Segun opcion Hacer
			Caso 1:
				resultado <- num1 + num2;
				Escribir "El resultado de la suma es: ", resultado;
			Caso 2:
				resultado <- num1 - num2;
				Escribir "El resultado de la resta es: ", resultado;
			Caso 3:
				resultado <- num1 * num2;
				Escribir "El resultado de la multiplicación es: ", resultado;
			Caso 4:
				Si num2 = 0 Entonces
					Escribir "Error: División por cero no está permitida.";
				Sino
					resultado <- num1 / num2;
					Escribir "El resultado de la división es: ", resultado;
				FinSi
			De Otro Modo:
				Escribir "Opción inválida."; //si no elige una de las opciones por defaut mostrara en pantalla opcion invalida
		FinSegun
FinAlgoritmo 
