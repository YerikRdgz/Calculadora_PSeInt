///////////////////////////////////////////////////////////
//                PROCESO PRINCIPAL
///////////////////////////////////////////////////////////

Proceso CalculadoraMultifuncional
    // Define la variable 'opcion' como Entero para guardar la selección del menú.
    Definir opcion Como Entero;
	
    // Inicia un ciclo que se repetirá hasta que el usuario elija la opción 5 (Salir).
    Repetir
        // 'Limpiar Pantalla' borra la consola para mostrar el menú de forma clara.
        Limpiar Pantalla;
        Escribir "====== CALCULADORA MULTIFUNCIONAL ======";
        Escribir "1. Operaciones Básicas";
        Escribir "2. Figuras Geométricas (Área, Radio, Diámetro)";
        Escribir "3. Estadística Básica";
        Escribir "4. Sucesión de Fibonacci";
        Escribir "5. Salir";
        Escribir "Selecciona una opción: ";
        Leer opcion;
		
        // Estructura de control 'Segun' (similar a switch) para ejecutar la acción elegida.
        Segun opcion Hacer
            1:
                // Llama al subproceso para realizar sumas, restas, etc.
                OperacionesBasicas;
            2:
                // Llama al subproceso que muestra el menú de figuras geométricas.
                MenuFiguras;
            3:
                // Llama al subproceso para calcular media, mediana y moda.
                Estadistica;
            4:
                // Llama al subproceso para generar la secuencia de Fibonacci.
                Fibonacci;
            5:
                // Opción de salida.
                Escribir "Saliendo...";
            De Otro Modo:
                // Manejo de error si la opción no está entre 1 y 5.
                Escribir "Opción no válida. Por favor, intenta de nuevo.";
        FinSegun;
		
        // Pausa para que el usuario pueda ver el resultado antes de volver al menú.
        Escribir "Presiona ENTER para continuar...";
		Esperar Tecla; // Lee cualquier entrada para confirmar la continuación.
		
    Hasta Que opcion = 5;
FinProceso


///////////////////////////////////////////////////////////
//  SUBPROCESO: OPERACIONES BÁSICAS
///////////////////////////////////////////////////////////

SubProceso OperacionesBasicas 
    // Define las variables para los números (a, b) y la operación (op) como Reales.
    Definir a, b, op Como Real;
    
    Escribir "OPERACIONES BÁSICAS";
    Escribir "1. Suma";
    Escribir "2. Resta";
    Escribir "3. Multiplicación";
    Escribir "4. División";
    Escribir "Selecciona la operación: ";
    Leer op; // op solo se usa para el menú, pero se define como Real por si acaso.
	
    Escribir "Ingresa el primer número: ";
    Leer a;
	
    Escribir "Ingresa el segundo número: ";
    Leer b;
	
    Segun op Hacer
        1: Escribir "Resultado de la Suma: ", a + b;
        2: Escribir "Resultado de la Resta: ", a - b;
        3: Escribir "Resultado de la Multiplicación: ", a * b;
        4:
            // Validación crucial: Comprueba si el divisor (b) es cero.
            Si b = 0 Entonces
                Escribir "Error: No se puede dividir entre 0.";
            SiNo
                Escribir "Resultado de la División: ", a / b;
            FinSi;
        De Otro Modo:
            Escribir "Opción de operación inválida.";
    FinSegun;
FinSubProceso


///////////////////////////////////////////////////////////
//  SUBPROCESO: MENÚ FIGURAS GEOMÉTRICAS
///////////////////////////////////////////////////////////

SubProceso MenuFiguras
    // Define la opción del submenú de figuras.
    Definir op Como Entero;
    Escribir "FIGURAS GEOMÉTRICAS";
    Escribir "1. Círculo (Área, Radio, Diámetro)";
    Escribir "2. Cuadrado (Área, Diagonal)";
    Escribir "3. Triángulo (Área)";
    Escribir "4. Trapecio (Área)";
    Escribir "Selecciona una figura: ";
    Leer op;
	
    // Llama al subproceso de la figura seleccionada.
    Segun op Hacer
        1: Circulo;
        2: Cuadrado;
        3: Triangulo;
        4: Trapecio;
        De Otro Modo:
            Escribir "Opción inválida.";
    FinSegun;
FinSubProceso


///////////////////////////////////////////////////////////
//  SUBPROCESO: CÍRCULO
///////////////////////////////////////////////////////////

SubProceso Circulo
    // Define las variables para el radio (r), área y diámetro.
    Definir r, area, diametro Como Real;
	
    // Ciclo para asegurar que el radio ingresado sea un valor positivo.
    Repetir
        Escribir "Ingresa el radio del círculo: ";
        Leer r;
    Hasta Que r > 0;
	
    // Cálculo del área (PI * radio^2).
    area <- PI * r * r;
    // Cálculo del diámetro (2 * radio).
    diametro <- r * 2;
	
    Escribir "--- Resultados ---";
    Escribir "Área: ", area;
    Escribir "Radio (Ingresado): ", r;
    Escribir "Diámetro: ", diametro;
FinSubProceso


///////////////////////////////////////////////////////////
//  SUBPROCESO: CUADRADO
///////////////////////////////////////////////////////////

SubProceso Cuadrado
    // Define variables para el lado, área y diagonal (diag).
    Definir lado, area, diag Como Real;
    
    // Ciclo para asegurar que el lado ingresado sea un valor positivo.
    Repetir
        Escribir "Ingresa el lado del cuadrado: ";
        Leer lado;
    Hasta Que lado > 0;
	
    // Cálculo del área (lado * lado).
    area <- lado * lado;
    // Cálculo de la diagonal (lado * raíz(2)). La función 'raiz()' es de PSeInt.
    diag <- lado * raiz(2);
	
    Escribir "--- Resultados ---";
    Escribir "Área: ", area;
    Escribir "Diagonal: ", diag;
FinSubProceso


///////////////////////////////////////////////////////////
//  SUBPROCESO: TRIÁNGULO
///////////////////////////////////////////////////////////

SubProceso Triangulo
    // Define variables para la base, altura (h) y área.
    Definir base, altura, area Como Real;
	
    // Ciclo para asegurar que tanto la base como la altura sean positivas.
    Repetir
        Escribir "Base: ";
        Leer base;
        Escribir "Altura: ";
        Leer altura;
    Hasta Que base > 0 Y altura > 0;
	
    // Cálculo del área ((base * altura) / 2).
    area <- (base * altura) / 2;
	
    Escribir "--- Resultados ---";
    Escribir "Área: ", area;
FinSubProceso


///////////////////////////////////////////////////////////
//  SUBPROCESO: TRAPECIO
///////////////////////////////////////////////////////////

SubProceso Trapecio
    // Define variables para la base mayor (b1), base menor (b2), altura (h) y área.
    Definir b1, b2, h, area Como Real;
	
    // Ciclo para asegurar que todas las dimensiones sean positivas.
    Repetir
        Escribir "Base mayor: ";
        Leer b1;
        Escribir "Base menor: ";
        Leer b2;
        Escribir "Altura: ";
        Leer h;
    Hasta Que b1 > 0 Y b2 > 0 Y h > 0;
	
    // Cálculo del área de un trapecio (((b1 + b2) / 2) * h).
    area <- ((b1 + b2) / 2) * h;
	
    Escribir "--- Resultados ---";
    Escribir "Área: ", area;
FinSubProceso


///////////////////////////////////////////////////////////
//  SUBPROCESO: ESTADÍSTICA (MEDIA, MEDIANA, MODA)
///////////////////////////////////////////////////////////

SubProceso Estadistica
    // 'n' es la cantidad de números, 'i' es un contador.
    Definir n, i, num Como Entero;
    // Declara un arreglo para almacenar hasta 100 números.
    Dimension num[100];
    // Variables para los resultados estadísticos y la suma.
    Definir suma, media, mediana, moda Como Real;
    // Variable auxiliar para el ordenamiento.
    Definir aux, maxFrec, frec, j Como Real;
	
    // Pide la cantidad de datos a ingresar, limitándolo entre 1 y 100.
    Repetir
        Escribir "¿Cuántos números deseas ingresar? (1-100)";
        Leer n;
    Hasta Que n > 0 Y n <= 100;
	
    // Bucle para leer cada uno de los 'n' números y guardarlos en el arreglo.
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Número ", i, ": ";
        Leer num[i];
    FinPara;
	
    Escribir "--- Cálculos Estadísticos ---";
	
    // 1. CÁLCULO DE LA MEDIA (PROMEDIO)
    suma <- 0;
    Para i <- 1 Hasta n
        suma <- suma + num[i]; // Acumula la suma de todos los elementos.
    FinPara;
    media <- suma / n; // Divide la suma total por la cantidad de elementos.
	
    // 2. ORDENAMIENTO DE DATOS (ALGORITMO DE BURBUJA)
    // El ordenamiento es necesario para calcular la Mediana.
    Para i <- 1 Hasta n-1 // Bucle externo, recorre el arreglo n-1 veces.
        Para j <- 1 Hasta n-i // Bucle interno, reduce el rango en cada pasada.
            // Si el elemento actual es mayor que el siguiente, los intercambia.
            Si num[j] > num[j+1] Entonces
                aux <- num[j];
                num[j] <- num[j+1];
                num[j+1] <- aux;
            FinSi;
        FinPara;
    FinPara;
	
    // 3. CÁLCULO DE LA MEDIANA
    // Si la cantidad de datos (n) es PAR.
    Si n % 2 = 0 Entonces
        // La mediana es el promedio de los dos números centrales.
        mediana <- (num[n/2] + num[n/2 + 1]) / 2;
    SiNo
        // Si la cantidad de datos (n) es IMPAR.
        // La mediana es el valor central (índice (n+1)/2).
        mediana <- num[(n + 1)/2];
    FinSi;
	
    // 4. CÁLCULO DE LA MODA
    maxFrec <- 0; // Inicializa la frecuencia máxima encontrada.
    moda <- 0;    // Inicializa el valor de la moda.
	
    Para i <- 1 Hasta n // Recorre cada número en el arreglo ordenado.
        frec <- 0; // Reinicia el contador de frecuencia para el número actual.
        
        Para j <- 1 Hasta n // Compara el número actual (i) con todos los demás.
            Si num[i] = num[j] Entonces
                frec <- frec + 1; // Incrementa la frecuencia si encuentra una coincidencia.
            FinSi;
        FinPara;
		
        // Si la frecuencia actual es mayor que la máxima registrada...
        Si frec > maxFrec Entonces
            maxFrec <- frec;    // ...actualiza la frecuencia máxima.
            moda <- num[i]; // ...y actualiza la Moda al número actual.
        FinSi;
    FinPara;
	
    // Muestra los resultados calculados.
    Escribir "Media (Promedio): ", media;
    Escribir "Mediana (Valor Central): ", mediana;
    Escribir "Moda (Valor más Repetido): ", moda;
FinSubProceso


///////////////////////////////////////////////////////////
//  SUBPROCESO: SUCESIÓN DE FIBONACCI
///////////////////////////////////////////////////////////

SubProceso Fibonacci
    // 'n' es la cantidad de términos, a, b, c son los números de la secuencia, 'i' es el contador.
    Definir n, a, b, c, i Como Entero;
	
    // Pide la cantidad de términos a generar, asegurando que sea positivo.
    Repetir
        Escribir "¿Cuántos términos deseas generar? (>0)";
        Leer n;
    Hasta Que n > 0;
	
    // Inicializa los dos primeros términos de la sucesión.
    a <- 0;
    b <- 1;
	
    Escribir "Sucesión de Fibonacci:";
	
    Para i <- 1 Hasta n // Genera 'n' términos de la secuencia.
        Escribir a;       // Imprime el término actual (a).
        c <- a + b;       // El siguiente término (c) es la suma de los dos anteriores.
        a <- b;           // 'a' toma el valor anterior de 'b'.
        b <- c;           // 'b' toma el valor del nuevo término calculado (c).
    FinPara;
FinSubProceso
