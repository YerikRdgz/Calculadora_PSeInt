# Calculadora_PSeInt
Este proyecto consiste en el desarrollo de una calculadora multifuncional en PSeInt que integra operaciones aritméticas, cálculos geométricos, análisis estadístico y generación de la sucesión de Fibonacci, con validaciones para evitar errores.
## Descripción del proyecto
La calculadora incluye:
- Operaciones aritméticas básicas con validación de entradas 
- Cálculo de áreas (círculo, cuadrado, triángulo, trapecio) y dimensiones (diámetro para el círculo).
- Módulo estadístico: media, mediana y moda 
- Generador de la sucesión de Fibonacci que asegura iniciar en el primer término de Fibonacci mayor o igual al número inicial ingresado por el usuario.
## Arquitectura y Lógica.
La arquitectura del proyecto es modular, basada en un Proceso principal que actúa como controlador y varios SubProcesos que encapsulan la lógica de cada módulo.
### Lógica Principal (Proceso CalculadoraMultifuncional)
- **Bucle Principal:** Se utiliza una estructura Repetir...Hasta Que para mantener la aplicación activa. El menú principal se muestra en cada iteración hasta que el usuario selecciona la opción "Salir" (5).
- **Navegación:** Se emplea una estructura Segun (equivalente a un switch) para dirigir al usuario al subproceso correspondiente según la opcion elegida.
- **Experiencia de Usuario:** Se utiliza Limpiar Pantalla al inicio de cada bucle para mantener la consola ordenada. Además, se implementa una pausa (Escribir "Presiona ENTER..."; Leer tecla;) después de cada operación para que el usuario pueda leer el resultado antes de que el menú principal vuelva a aparecer.

### Lógica de los Subprocesos (Módulos)
- **OperacionesBasicas:** Pide dos números (a, b) y la operación. Un Segun interno determina qué cálculo realizar. Incluye una validación crítica para evitar la división por cero.
- **MenuFiguras:** Actúa como un sub-menú que redirige a los subprocesos de geometría (Circulo, Cuadrado, etc.), manteniendo el código principal limpio.
- **Estadistica:**
  - **Entrada:** Pide al usuario la cantidad de datos (n) y valida que esté entre 1 y 100. Luego, usa un bucle Para para leer los n números en un arreglo.
  - **Media:** Acumula la suma de todos los elementos en suma y la divide por n.
  - **Mediana:** Implementa un algoritmo de ordenamiento de burbuja (dos bucles Para anidados) para ordenar el arreglo. Una vez ordenado, comprueba si n es par (n % 2 = 0) o impar para encontrar el valor central o el promedio de los dos valores centrales.
  - **Moda:** Utiliza dos bucles Para anidados. El bucle externo recorre cada número, y el interno cuenta su frecuencia (frec). Se usan variables auxiliares (maxFrec, moda) para almacenar el valor más repetido.
- **Fibonacci:** Pide el número de términos (n). Inicializa a = 0 y b = 1. Un bucle Para genera la secuencia calculando el siguiente término (c <- a + b) y actualizando los valores de a y b en cada iteración.

## Propósito de cada Módulo
- **Proceso CalculadoraMultifuncional:** Servir como el punto de entrada, controlador principal y gestor del flujo del programa.
- **SubProceso OperacionesBasicas:** Juntar toda la lógica aritmética fundamental. Su propósito es proveer cálculos rápidos, incluyendo la validación de la división por cero.
- **SubProceso MenuFiguras:** Agrupar y organizar todas las funciones de geometría. Su propósito es actuar como un índice temático, mejorando la navegación.
- **SubProcesos Circulo, Cuadrado, Triangulo, Trapecio:** Calcular propiedades específicas de cada figura. Su propósito es validar que las dimensiones ingresadas (radio, lado, etc.) sean positivas (> 0) antes de aplicar las fórmulas matemáticas correspondientes.
- **SubProceso Estadistica:** Proveer un análisis descriptivo básico de un conjunto de datos. Su propósito es demostrar los algoritmos para calcular la media, la mediana (requiriendo ordenamiento) y la moda (requiriendo conteo de frecuencias).
- **SubProceso Fibonacci:** Generar una secuencia matemática clásica. Su propósito es demostrar el uso de bucles y la gestión de estado (variables a, b, c) para generar una serie.
