# Calculadora Multifuncional en PSeInt
Este proyecto consiste en el desarrollo de una calculadora multifuncional en PSeInt que integra operaciones aritméticas, cálculos geométricos, análisis estadístico y generación de la sucesión de Fibonacci, con validaciones para evitar errores.
## 🚀 Tecnologías Utilizadas
- **PSeInt:** Como lenguaje de pseudocode e intérprete para ejecutar la lógica.
## 📋 Descripción del Proyecto
La calculadora incluye cuatro módulos principales accesibles desde un menú:
  - **Operaciones Aritméticas Básicas:** Suma, resta, multiplicación y división, con validación para evitar la división por cero.
  - **Cálculos Geométricos:**
    - **Círculo:** Calcula área y diámetro a partir del radio.
    - **Cuadrado:** Calcula área y diagonal a partir del lado.
    - **Triángulo:** Calcula el área a partir de la base y la altura.
    - **Trapecio:** Calcula el área a partir de sus bases y altura.
  - **Módulo Estadístico:** Calcula la media (promedio), mediana y moda para un conjunto de datos ingresado por el usuario (hasta 100 números).
  - **Sucesión de Fibonacci:** Genera y muestra los n primeros términos de la sucesión, comenzando desde 0 y 1.
## 🏗️ Arquitectura y Lógica
La arquitectura del proyecto es modular, basada en un Proceso principal que actúa como controlador y varios SubProcesos que encapsulan la lógica de cada módulo.
### Lógica Principal (Proceso CalculadoraMultifuncional)
  - **Bucle Principal:** Se utiliza una estructura Repetir...Hasta Que para mantener la aplicación activa. El menú principal se muestra en cada iteración hasta que el usuario selecciona la opción "Salir" (5).
  - **Navegación:** Se emplea una estructura Segun (equivalente a un switch) para dirigir al usuario al subproceso correspondiente según la opcion elegida.
  - **Experiencia de Usuario:**
    - **Limpiar Pantalla:** Se usa al inicio de cada bucle para mantener la consola ordenada.
    - **Leer tecla:** Se implementa una pausa al final del bucle. El programa espera que el usuario presione "ENTER" para que pueda leer el resultado antes de que la pantalla se borre.

### Lógica de los Subprocesos (Módulos)
- **OperacionesBasicas:** Pide dos números (a, b) y la operación. Un Menu interno determina qué cálculo realizar. Incluye una validación crítica para evitar la división por cero.
- **MenuFiguras:** Actúa como un sub-menú que redirige a los subprocesos de geometría (Circulo, Cuadrado, etc.), manteniendo el código principal limpio.
- **Estadistica:**
  - **Entrada:** Pide al usuario la cantidad de datos (n) y valida que esté entre 1 y 100. Luego, usa un bucle Para para leer los n números en un arreglo.
  - **Media:** Acumula la suma de todos los elementos en suma y la divide por n.
  - **Mediana:** Implementa un algoritmo de ordenamiento de burbuja (dos bucles Para anidados) para ordenar el arreglo. Una vez ordenado, comprueba si n es par (n % 2 = 0) o impar para encontrar el valor central o el promedio de los dos valores centrales.
  - **Moda:** Utiliza dos bucles Para anidados. El bucle externo recorre cada número, y el interno cuenta su frecuencia (frec). Se usan variables auxiliares (maxFrec, moda) para almacenar el valor más repetido.
- **Fibonacci:** Pide el número de términos (n). Inicializa a = 0 y b = 1. Un bucle Para genera la secuencia calculando el siguiente término (c <- a + b) y actualizando los valores de a y b en cada iteración.

## 🎯 Propósito de cada Módulo
- **Proceso CalculadoraMultifuncional:** Servir como el punto de entrada, controlador principal y gestor del flujo del programa.
- **SubProceso OperacionesBasicas:** Juntar toda la lógica aritmética fundamental. Su propósito es proveer cálculos rápidos, incluyendo la validación de la división por cero.
- **SubProceso MenuFiguras:** Agrupar y organizar todas las funciones de geometría. Su propósito es actuar como un índice temático, mejorando la navegación.
- **SubProcesos Circulo, Cuadrado, Triangulo, Trapecio:** Calcular propiedades específicas de cada figura. Su propósito es validar que las dimensiones ingresadas (radio, lado, etc.) sean positivas (> 0) antes de aplicar las fórmulas matemáticas correspondientes.
- **SubProceso Estadistica:** Proveer un análisis descriptivo básico de un conjunto de datos. Su propósito es demostrar los algoritmos para calcular la media, la mediana (requiriendo ordenamiento) y la moda (requiriendo conteo de frecuencias).
- **SubProceso Fibonacci:** Generar una secuencia matemática clásica. Su propósito es demostrar el uso de bucles y la gestión de estado (variables a, b, c) para generar una serie.

## 💡 Dificultades Encontradas y Soluciones
Durante el desarrollo, surgieron varios desafíos lógicos y de validación.
- **Problema:** Errores matemáticos en tiempo de ejecución.
  - **Solución:** Se implementó una validación explícita en el módulo OperacionesBasicas. Antes de realizar una división, se comprueba si el divisor (b) es igual a cero. Si lo es, se muestra un mensaje de error en lugar de permitir que el programa falle.
- **Problema:** El usuario ingresaba valores no válidos para cálculos geométricos (ej. un radio de -5).
  - **Solución:** Se utilizaron bucles Repetir...Hasta Que en todos los subprocesos de figuras (Circulo, Cuadrado, etc.) para forzar al usuario a ingresar un valor positivo (> 0). El programa no continúa hasta que la entrada sea válida.
- **Problema:** Calcular la Mediana de forma correcta.
  - **Solución:** Se identificó que el conjunto de datos debía estar ordenado. Se implementó un algoritmo de ordenamiento de burbuja (Para i... Para j...) para ordenar el arreglo numeros de menor a mayor. Posteriormente, se añadió la lógica condicional (Si n % 2 = 0) para manejar correctamente tanto conjuntos de datos pares como impares.
- **Problema:** El flujo del programa era demasiado rápido, y los resultados desaparecían de la pantalla.
  - **Solución:** Se implementó una pausa táctica al final del bucle principal (Leer tecla;). Esto detiene la ejecución después de mostrar un resultado, forzando al programa a esperar una entrada (la tecla ENTER) antes de limpiar la pantalla y volver al menú principal.
