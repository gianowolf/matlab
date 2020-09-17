# Procesamiento de Señales en MATLAB: Parte 1 - Introducción

## Señales y Sistemas

La progresión lógica en la utilización de MATLAB para resolver problemas de señales y sistemas es entender:

1. Qué tipo de números pueden ser representados
2. Cómo nombrar las variables y qué valores se les pueden asignar
3. Qué operadores matemáticos son construidos en MATLAB y cómo operan números y variables
4. Qué funciones matemáticas son intrínsecas en MATLAB
5. Cómo escribir un archivo script
6. Cómo escribir un archivo función para definir funciones matemáticas
7. Cómo mostrar los resultados de forma gráfica para obtener una rápida comprensión de relaciónes entre variables

## Números, Variables y Matrices

MATLAB es basado en vector y matrices. Es decir, TODO en MATLAB es una matriz. Un vector de m elementos es una matriz 1xm y un escalar es una matriz 1x1.

```Matlab
% Real numbers:
a = 7.89
b = 15.8e-11

% Complex Numbers:
c = 8+3*i
d = 8+j*3
% i y j estan preasignadas en MATLAB para ser iguales a raiz cuadrada de -1

% constantes preasignadas en MATLAB:
% i y j para raiz cuadrada de -1
% pi
% inf para infinito
% NaN para not a number
```

### Operadores mas comunes

```Matlab
% = asignación
% == igualdad
% + adición
% - substraccion y unary minus
% * multiplicación de matrices
% .* multiplicacion de arrays
% ^ potencia de matrices
% .^ potencia de array
% / division
% ./ division de arrays
% <> operadores relacionales
% & AND logico
% ~ NOT logico
% | OR logico
```

### Promt, ";" y whitespaces

```Matlab
% El caracter » indica que MATLAB espera pos instrucciones del usuario
»

% El punto y coma ; termina la instruccion
» a = 2 ;

% los espacios son ignorados por MATLAB

% ans expresa un resultado cuando el usuario no le asigno un nombre
% por ejemplo multiplicando a = 2 por b = 3
» a * b
ans = 6
```

### Vectores

```Matlab
% Asignación de vectores
b = [1 3 2] ; c = [1 , 5 , 5] ;
```

### Comandos

```Matlab
% para obtener las variables actualmente definidas y sus valores se utiliza el comando who
» who
Your Variables are:
A  C  ans c
B  a  b

% para hacer indefinido el valor de una variable se utiliza el comando clear
» clear A
» A
??? Undefined function or variable ==> A
```

### Multiplicacion

- Multiplicar una matriz por un escalar multiplica cada miembro del vector o matriz por el escalar.
- Sumar o restar un escalar a un vector o matriz, suma o resta el escalar a cada elemento del vector o matriz.
- Los vectores y matrices se suman (o restan) como normalmente se define en matemáticas. Es decir, los vectores o matrices deben tener la misma dimensión para realizar la operación.
- La multiplicación de vectores respeta las reglas del algebra. Por ejemplo

```Matlab
b = [1 2 3]
c = [3 2 1]
% multiplicar b*c retorna
» b * c
??? Error using ==> *
% Necesitamos utilizar la transpuesta de c para realizar la multiplicacion de matrices
» b * c'
ans = 10
» b' * c
% esto retorna una matriz de 3x3.

% A veces es util multiplicar vactores o matrices de igual dimension elemento por elemento. Este tipo de multiplicacion es llamada array multiplication y se realiza mediante el operador .*

b. *c
ans =
    3 4 3

% Matrices

A = [ 3 5 1 ; 9 -1 2 ; -7 -4 3];
» A
A =
  3  5  1
  9 -1  2
 -7 -4  3

 % En la potencia ^ se respeta las reglas del algebra
 % para elevar elento por elemento se utiliza .^
```

### Division

- Se puede dividir escalares por escalar, vectores por escalar, matrices por escalar.
- Al utilizar A/B entre matrices es equivalente a multiplicar la matriz A por la matriz inversa de B.
- Se puede utilizar la division de array A. / B  para dividir elemento por elemento
- Se puede dividir un escalar por una matriz utilizando el operador ./ por ejemplo 10./A nos devuelve una matriz donde cada elemento es el escalar dividido el elemento en la posicion correspondiente en la matriz

### Igualdad

El operador == compara dos numeros y devuelve el valor logico 1 si los numeros eran el mismo o 0 sin no lo eran.

- Si dos vectores o dos matrices son comparadas deben tener la misma forma
- Se puede realizar con escalar con escalar, vector con vector, matriz con matriz y escalar con vector o matriz
- El operador ~= devuelve 1 si no son iguales y 0 si son iguales

```Matlab
% operadores
% ~=
% >
% <
% >=
% <=
```

### Operadores Logicos

```Matlab
% & devuelve 1 si ambos operandos NO son cero y 0 cc
% & | devuelve 0 si ambos operandos son cero y 1 cc
% ~ devuelve 1 si el operando es 0, y 0 si el operando es distinto de cero

```

### Operador ":"

```Matlab
% Si ambos operandos son escalares, genera una secuencia separados por uno
» 3 : 8
ans = 3 4 5 6 7 8

% Utilizando la forma a:b:c donde todos son escalares genera una secuencia de a a c separados por b
» -4:3:5
ans = -4 -1 2 5

% El incremento termina en el valor menor o igual que el valor especificado c (cuando el inc es positivo)

% Otro uso: Vecotr Columna: la instruccion A(:) forma un vector columna con todos los elementos en la matriz A

% Otro uso: Extraer submatriz: A(:,2) forma una matriz con la segunda columna de A
» A(:,2)
ans =
   30
   23
  -11

»A(3,:)
ans =
    1 -11 2
```

## Scripts y Funciones

Existen dos tipos de programas en MATLAB, scripts y funciones. Ambos programas se almacenan con la extensión ".m".

Una función es un programa modular que acepta argumentos y devuelve resultados. El principal objetivo es que sea reutilizable en varias situaciones.

La primera linea en una funcion debe ser la palabra clave o *keyword* **function**

```Matlab
function y = nombreFuncion(a,b,c)
```

## Funciones y Comandos MATLAB

MATLAB tiene una lista de funciones y comandos intrinsecos para tareas comunes en matematicas.

El comando *help* ofrece documentacion de todos los comandos MATLAB.

```Matlab
» help abs

ABS Absolute value
 (...)
```

### Comandos de control de flujo

### If

```Matlab
if a > b then
    ...
else
    ...
end
```

### For

```Matlab
for n = 1:15,
 (...)
end

N = 16:4:0;
for n = N,
 (...)
end

% Tambien se pueden utilizar vectores
N = 1:10 ; x = [] ;
for n = []
    x = [x,n^2];
end
```

### While

```Matlab
while x > 32
    (...)
end
```

### Switch

```Matlab
switch expression
    case value1,
        ...
    case value2,
        ...
    ...
    case valueN
        ...
end
```

### Otros comandos

```Matlab
% Entrada de teclado
n = input('Message')M

% pausa hasta presionar una tecla y pausa por un tiempo n en segundos
pause;
pause(n);
```

### Matrices Elementales

```Matlab
» zeros(1,3)
ans = 0 0 0

» ones(3,2)
ans =
    1 1
    1 1
    1 1

» zeros(2)
ans =
    0 0
    0 0

% Matriz identidad (Eye -> I, badum ts)
» eye(3)
ans =
    1 0 0
    0 1 0
    0 0 1

% pseudorandom numbers
% rand genera numeros entre 0 y 1 con distribucion uniforme
% randn genera numeros con distribucion normal

%tamaño
»size(b)

%longitud
» length(c)
```

## Funciones Matematicas Elementales

```Matlab
» sin(2)
» cos([2 4])
» tan(B)
» exp([3 -1 j*pi/2])
» log([3 ; 6])
» sqrt([3 ; j*2 ; -1])

% Funciones utiles con numeros complejos
» abs(1+j)
» angle(1+j)
» conj(1+j)
» real(1+j)
» imag(1+j)

% Otras funciones
» fix % redondea un numero al entero mas cercano hacia cero
» floor % redondea un numero al entero mas cercano hacia menos infinito
» ceil % redondea un numero al entero mas cercano hacia mas infinito
» rounds % redondea un numero al entero mas cercano
» mod(x,y) % mod(x,y) = x - y .* floor(x ./ y)
» rem(x,y) % si y no es cero rem(x,y) = x - y.*fix(x./y)
```

### Funciones de Matematica Avanzada

Algunas funciones útiles es procesamiento de señales son la *funcion error*, *funcion error complementario*, *minimo comun multiplo* y *maximo comun divisor*.

```Matlab
%Error y complemento del error
» erf(-1)
» erfc(-1)

% Minimo comun multiplo: Acepta matrices y devuelve el LCM (least common multiple) de los elementos
» lcm([3 5 9 5 12]);
» gcd(15 25 35 80));
```

### Funciones Matematicas con Matrices

En procesamiento de señales es comun la inversion de matrices y el calculo de eigenvalores.

```Matlab
% Matriz invertida (debe ser cuadrada y su determinante /= de 0)
» inv(A)

inv(A)*A % devuelve identidad

» eig(B) % encuentra los eigenvalores de una matriz cuadrada

» max(C) % retorna el valor maximo en un vector
» min(C) % igual que max, pero retorna el minimo
» mean(A) % para una matriz retorna un vector con el valor medio de las columnas de A
» std(B) % retorna la desviacion estandar de un vector, y para una matriz retorna un vector con la desviacion estandar de las columnas
» sort(C) % Ordena las columnas de un vector en orden ascendente
```

Para funciones en tiempo discreto (SVID) hay cinco funciones que pueden ser útiles.

```Matlab
% Retorna la suma de los elementos de un vector, o un vector suma de las columnas en una matriz
» sum(B)

% igual que sum pero con el producto
» prod(B)

% Retorna un vector donde cada elemento es la diferencia del elemento del vector original menos el de su posicion anterior. El vector resultado tiene un elemento menos que el vector de input. Para una matrix, devuelve una matriz con la diferencia en las columnas.
» diff(A)

% Cumulative Sum: Retorna un vector donde cada elemento es la suma de los elementos previos. En una matriz aplica lo mismo en columnas
» cumsum(C)

% Opera como cumsum pero con el producto
» cumprod(C)
```

Otras funciones muy importantes son histograma, covarianza, convolucion y Transformada de Fourier rápida.

```Matlab
% hist grafica un histograma de un vector de datos.
» hist(randn(1000,1))

% cov encuentra la covarianza de un vector o la matriz de covarianza en una matriz, considerando cada columna que representa una observacion y cada collumna contiene datos de una variable.
» cov(randon(5,5))

% conv convoluciona dos vectores. La longitud del vector de retorno es la suma de las longitudes de los vectores de convolucion, menos uno.
» conv(ones(1,5),ones(1,5))
ans =
    1 2 3 4 5 4 3 2 1

%La funcion fft computa la Transformada de fourier discreta de un vector
» fft(cos(2*pi(0:15)'/4))
```

### Interpolación y Polinomios

En procesamiento de señales es importante encontrar las raices de las ecuaciones.

```Matlab
% roots encuentra todas las raices de una ecuacion algebraica
% La ecuacion se asume de forma polinomial ax^n + ... + bx² + cx³ + dx⁴ = 0 donde el vector input son los coeficientes a , ... , c , b , c , d
» roots([3 9 8 1])

% Polynomial curve fitting. Recibe:
% Un vector X que contiene los valores de una variable independiente
% Un vector Y contiene los valores de la variable dependiente
% Un escalar N, grado del polinomio usado para ajustar la curva a los datasets.
% Retorna los coeficientes, en orden ascendente de un polinomio de grado N que tiene el minimo error medio cuadrado para los valores de entrada
» X = 1:10;
» Y = 5 + 3*x + randn(1,10)*2 ;
» polyfit(X, Y, 2)
ans =
    0.0170 2.4341 6.4467
```

### Gráficos en dos dimensiones

```Matlab
% plot acepta dos vectores como argumento y opcionalmente algun comando de formato
% Grafica el segundo vector verticalmente vs el primero horizontalmente.
» t = 0:1/32:2 ; x = sin(2*pi*t) ;
» plot(t,x);
» plot(t,x,'k--')
```

- Si agregamos un tercer argumento, controla el estilo y el color. Se determina con string

| color | marker | line style |
| --- | --- | --- |
| "y" yellow | . point | - solid |
| "m" magenta | o circle | : dotted |
| r red | x x-mark | -. dashdot |
| g green | + plus | -- dashed |
| b blue | s square | |
| w white | d diamond |
| b black | v triangle | |
| | ^ trianle | |
| | < triangle | |
| | > triangle | |
| | p pentagram | |
| | h hexagram | |

### Linspace

La funcion linspace es una herramienta util para producir un vector **equiespaciado**. Acepta dos o tres argumentos escalares.

- Si ingresan dos escalares d1 y d2, linspace retorna un vector de 100 valores equally-spaced entre d1 y d2, incluyendo ambos puntos.
- Si tres escalares d1, d2 y d3 ingresan, linspace devuelve un vector de N valores entre d1 y d2
- ejemplo ```linspace(0,5,11)```

### Logspace

- Utilizado para producir un vector equally-logarithmically-spaced.
- ```logspace(d1,d2)``` devuelve un vector de 50 equally-logarighmically-spaced entre 10^d1 y 10^d2.
- ```logspace(d1,d2,N)``` devuelve un vector de N valores

### Loglog

- ```loglog``` grafica un vector vs otro, pero con escala logaritmica vertical y horizontal. La sintaxis funciona igual que ```plot```
- Ejemplo: loglog(f,abs(H));

### Semilog

- ```semilogx``` produce un gráfico con escala logaritmica en "x" y lineal en "y"
- ```semilogy``` logaritmico en "y", lineal en "x"

### Stem

- Se utiliza para SVID. Cada punto es indicado por un círculo al final de la linea
- Ejemplo: ```stem(t,x,'k','filled')``` es el formato clásico utilizado en bibliografía.
  
### Múltiples gráficos

A veces es útil mostrar múltiples ploteos simultaneamente. Se realiza con el comando ```subplot```.

- subplot recibe 3 argumentos:
  - numero de filas del grafico
  - numero de columas del grafico
  - qué posición ocupará el próximo ploteo en el subplot

```Matlab
» subplot(2,2,1) ; plot(t,x,'k') ;
» subplot(2,2,2) ; stem(t,x,'k','filled') ;
» x = cos(2*pi*t);
» subplot(2,2,4) ; plot(t, x, 'k--') ;
```

### Axis, Zoom y Grid

Para controlar la escala que se muestra en los plots se utiliza el comando axis.

- 1 argumento de entrada: vector de cuatro elementos
  - min x
  - max x
  - min y
  - max y

El comando ```zoom``` alterna la opcion de zooming. ```zoomon``` activa el zoom y ```zoomoff``` lo desactiva.

Grid agrega líneas cuadriculadas al gráfico. Los comandos grid, gridon y gridoff funcionan como zoom.

### Hold

el comando ```hold``` hace que cualquier curva que se plotee sea en el mismo gráfico y misma escala del ultimo plot graficado, hasta que se ejecute ```holdoff```

```Matlab
» plot(t,x) ;
» hold on;
» plot(t/2,x/2);
» hold off;
```

### Title, xlabel, ylabel y text

```Matlab
» plot(t,x);
» title('Este es el título del gráfico);
» xlabel('Eje temporal');
» ylabel('Tensión [ V ] (por ejemplo));
```

### Gráficos en Tres Dimensiones

```Matlab
% plot3:
» plot3(t,cos(2*pi*t),sin(2*pi*t));
» grid on;

% mesh:
% Se utiliza para funciones de dos variables independientes en una superficie sobre un plano.

% meshgrid
% Toma el valor de dos vectores como argumentos y devuelve dos matrices donde las columnas de X y Y son copias de los vectores x y y respectivamente

» x =  0: 0.1 : 2;
» y = -1: 0.1 : 1;
» [ X , Y ] = meshgrid(x,y);
» z = (X .^ 2) .* (Y .^ 3);
» mesh(x,y,z);
» xlabel('x') ; ylabel('y') ; zlabel('x^2.y^3');
```

### Stairs

```stairs``` acepta dos argumentos como plot y stem, pero plotea un grafico escalonado.

### Image

Acepta una matriz de elementos especificando la intensidad del color.

### Manejo de Gráficos

en MATLAB cada gráfico es un objeto, cuya apariancia puede ser modificada utilizando el comando ```set```.

```Matlab
h = plot(t,sin(2*pi*t));
set(h, 'LineWidth', 2);
```

El comando ```get``` devuelve una lista con las propiedades de un objeto.

### Ventana de Gráficos

Cuando se utiliza un comando de ploteo, MATLAB abre una ventana llamada ```figure``` con propiedades por default, y el plot es graficado dentro de ```figure```. El usuario puede manejar esta ventana con distintos comandos.

## Strings

- La funcion char cnoivierte integers en su correspondiente caracter ASCII.
- **concatenación**: ```strcat(s1,s2);```
- **comparación**:  ```strcmp(s1,s2);```
- **búsqueda**: ```findstr(s1,'palabra');```
- **conversión de tipos**: ```num2str(n)``` y ```str2num(s)```
  
## Archivos IN/OUT

```Matlab
% fopen
% apertura de archivos para lectura o escritura

% el argumento especifica el nombre y opcionalmente el path del file

% devuelve un integer positivo que identifica el archivo.
% si el archivo no fue encontrado, devuelve -1
% si el archivo es abierto para escritura y no existe, MATLAB lo crea.
% El archivo se cierra con fclose(numDeIdentificacion)

% el comando save escribe los cambios en disco.
```
