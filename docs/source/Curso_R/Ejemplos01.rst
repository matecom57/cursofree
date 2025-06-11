Ejemplos01
==========

1. Leyendo un archivo CSV y analizandolo.

.. code:: R

   rm(list=ls()) # limpia la memoria de variables de R

   datos <- read.csv('./ch01/EXA_C01_S04_01.csv', header=T) # leyendo el archivo y asignarlo a  la variable "datos"

   print(names(datos)) # imprime o muestra los nombres del HEADER.


2. Calculando algunas caracteristica de la variable EDAD:

.. code:: R

   edad = datos[,2]

   print(summary(edad)) 
  
   cat('media= ', mean(edad),'\n')
   cat('mediana= ', median(edad),'\n')
   cat('desviacion estndar= ', sd(edad),'\n') 
   cat('varianza= ', var(edad),'\n')
   cat('iqr= ', IQR(edad),'\n')
   cat('rango= ', range(edad),'\n')

   par(mfrow=c(2,2))
   plot(edad)
   hist(edad)
   ss = sort(edad)

   plot(ss)

3. Resolviendo una ecuacion de 2 Grado.

.. code:: R

   # solucion de una ecuacion de 2 grado
   # 2x^2 - 3x + 1 = 0
   # 2x^2 + 3x + 1 = 0
   # 4x^2 + 3x + 1 = 0

   rm(list=ls())

   # solucion con la ecuacion  genral

   a = 4
   b = 3
   c = 1

   del = b^2 - 4*a*c

   if (del >= 0){
      x1 = (-b + sqrt(del))/ (2*a)
      x2 = (-b - sqrt(del))/ (2*a)
   } else {
      x1 = (-b + complex(imaginary= sqrt(-1*del)))/ (2*a)
      x2 = (-b - complex(imaginary= sqrt(-1*del)))/ (2*a)
   }

   print(c(x1, x2))

4. En base al siguiente vector, determinar los siguiente:

   a) Número de M y H respectivamente.
   
   b) Hacer una grafica de barras

.. code:: R

   sexo = c("M", "H", "M", "M", "H", "M", "H","H", "M", "M", "H", "M", "M", "H","H", "H", "M", "H", "H", "H", "H",
         "M", "H", "M", "H", "H", "H", "H", "H", "M", "H", "H", "H", "M", "M", "M", "H", "H", "M", "H", "M", "H",
         "H", "M", "M", "H", "M", "H", "H", "M", "M", "M", "H", "H", "M", "H", "M", "M", "H", "M", "M", "H", "M",
         "H", "H", "H", "M", "M", "H", "M", "M", "M", "M", "M", "M", "M", "M", "H", "M", "H", "M", "M", "H", "M",
         "H", "H", "M", "M", "H", "H", "H", "H", "M", "M", "M", "H", "H", "M", "M", "H")

    print(sexo)

