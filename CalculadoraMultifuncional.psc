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
                Estadistica;// Si no existe, coméntalo
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
        1: Circulo;
        2: Cuadrado;
        3: Triangulo;
        4: Trapecio; // Si no lo programaste, coméntalo
        De Otro Modo:
            Escribir "Opción inválida.";
    FinSegun
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
