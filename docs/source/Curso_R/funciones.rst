Creación de Funciones
=====================

Una función es un programa en lenguaje R que es utilizado en varias partes del programa principal.
La función realiza cálculos a partir de datos tomados como argumentos de la función y regresa resultados como
estructura de datos.

La función se define como:

nombreFun <- function(arg1, arg2,...,argN){

   instrucción1

   instruccion2

   ............

   instrucciónN

}

La ultima "intrucciónN" es la que regresa como resultados de los calculos.

donde:
 
   ``nombreFun`` -  es el nombre de la función

   ``arg1, arg2, ..., argN`` - son las estructuras de datos que serán utilizados para los calculos
   

Ejemplos:


1. 

.. code:: R

   Suma <- function(x=0, y=0){
     res <- x+y
   }

   print(Suma(4,5))
   print(Suma(7,8))


2. 

.. code:: R

   RaicesEc2g <- function(a=0, b=0, c=0){
   del = b^2 - 4*a*c

   if (del >= 0){
      x1 = (-b + sqrt(del))/ (2*a)
      x2 = (-b - sqrt(del))/ (2*a)
   } else {
      x1 = (-b + complex(imaginary= sqrt(-1*del)))/ (2*a)
      x2 = (-b - complex(imaginary= sqrt(-1*del)))/ (2*a)
   }
   rest = c(x1, x2)
   }

   print(RaicesEc2g(2, -3, 1))
   print(RaicesEc2g(2, 3, 1))
   print(RaicesEc2g(4, 3, 1))





