# SVIC: Señales de Variable Independiente Contínua

## Declaracion de funciones

- El nombre del archivo debe coincidir con la función del archivo

```Matlab
% nombre archivo "nombreFuncion.m"
% funcion "nombreFuncion" con entradas x1,...,xM y salidas y1,...,yN
% function [y1,...,yN] = nombreFuncion(x1,...,xM)
%
% ejemplo:
% nombramos el archivo "triarea.m"
function f = triarea(b,h)
    f = b * h / 2;
end
```

## Funciones Trigonométricas

Exponencial, seno y coseno. Los argumentos se interpretan en radianes.

```Matlab
>> exp(1);
f = 16*pi;
>> sin(2/pi);
>> cos(f);
```

## Funciónes con Saltos

En el procesamiento de señales son llamadas funciones singulares. Se utilizan para modelar fenómenos físicos comunes en el mundo real.

### Función signo: sgn(t)

La función signo está predefinida en MATLAB

- 1, t > 0
- 0, t = 0
- -1, t < 0
  
```Matlab
>> sign()
```

### Función Escalón: u(t)

- 1, t > 0
- 0, t < 0

t=0 es indistinto. Las diferentes bibliografías especifican valores de 0, 1 y 1/2.

Se puede implementar la función escalón en MATLAB utilizando el siguiente código

```Matlab
function y = u(t)
    y = (sign(x) + 1) / 2;
```

### Rampa

- t, t > 0
- 0, t <= 0

La función rampa es la integral de la función escalón.

```Matlab
function y = ramp(t)
    y = t .* u(t);
```

### Delta de Dirac

MATLAB posee una función llamada ```dirac``` que retorna infinito para t = t0 y 0 en los otros valores de la recta real.

Es una definición muy acotada de la función delta y no es conveniente utilizarla en análisis de señales.

### Función Sinc o Seno Cardinal

#### Sinc normalizado

La función sinc(x), también llamada "sampling function" se usa en procesamiento de señales y en la teoria de Transformadas de Fourier.

```Matlab
% funcion sinc
%
% sinc(t) = sin(pi * t) / (pi * t)
%
function y = sinc(t)
    y = sin(pi * t) / (pi * t);
```

#### Sind

```Matlab
% funcion sind
%
function y = sind(t,N)
    y = sin(pi * N * t) ./ sin(pi * t);
```

# Escalado y Desplazamiento de Funciones

### Escala de Amplitud

```Ag(x)```

### Desplazamiento en el tiempo

```t -> (t-t0)```

- t0 > 0 -> shift a derecha
- t0 < 0 -> shift a izquierda