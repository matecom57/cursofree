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


5. Dadas los siguientes variables, graficar un boxplot de cada una de ellas, graficar tambien una grafica de barras de las 
medias con sus respectivos error estándar.

.. code::

   x1 <- c(52.67, 48.42, 57.46, 56.98, 54.10, 53.05, 56.81, 59.29, 52.60, 58.46, 60.95, 45.30)

   x2 <- c(50.49, 54.62, 63.45, 52.70, 56.17, 63.27, 65.79, 57.04, 79.00, 61.11, 62.46, 65.82, 63.70, 59.62)

   x3 <- c(51.68, 46.73, 50.15, 50.70, 54.42, 62.74, 50.47, 46.59, 55.55, 50.84, 53.81, 49.80)

Solución:

.. code:: R

   rm(list=ls())

   x1 <- c(52.67, 48.42, 57.46, 56.98, 54.10, 53.05, 56.81, 59.29, 52.60, 58.46, 60.95, 45.30)

   x2 <- c(50.49, 54.62, 63.45, 52.70, 56.17, 63.27, 65.79, 57.04, 79.00, 61.11, 62.46, 65.82, 63.70, 59.62)

   x3 <- c(51.68, 46.73, 50.15, 50.70, 54.42, 62.74, 50.47, 46.59, 55.55, 50.84, 53.81, 49.80)

   m1 = mean(x1)
   m2 = mean(x2)
   m3 = mean(x3)

   esd1 = sd(x1)/sqrt(length(x1))
   esd2 = sd(x2)/sqrt(length(x2))
   esd3 = sd(x3)/sqrt(length(x3))

   m = c(m1, m2, m3)
   s = c(esd1, esd2, esd3)

   b = barplot(c(m1, m2, m3), ylim=c(0, 80), names = c('X1', 'X2', 'X3'))

   for (i in 1:3){
      points(c(b[i], b[i]), c(m[i]-s[i], m[i]+s[i]), type='l', lwd=3, col='red')
   }

   points(c(0, b[3]+(b[2]-b[1])), c(0,0), type='l', lwd=4, col='blue')

6. Leyendo un archivo en Excel.

.. code:: R

   library("readxl")

   datos <- read_excel("Libro1.xlsx")

   print(class(datos))

   dd <- as.data.frame(datos)

   print(class(dd))

7. Grafico del modelo de mariposa

.. code:: R

   np = 10

   t <- seq(0, np*2*pi, .01)

   r = exp(cos(t)) - 2* cos(4*t) - sin(t/12)^5

   x = r*sin(t)
   y = r*cos(t)

   plot(x,y, type='l', col='red')




