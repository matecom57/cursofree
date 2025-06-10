Rscript
=======

Un **Rscript** es una archivo en el directorio de trabajo que tiene un programa escrito en lenguaje "R" para resolver un 
problema. Si este archivo es llamado **prog.R**, se ejecutara en la consola de "R" como

.. code::R

   source('prog.R')

Ejemplos. Hacer un script para cada uno de los siguientes ejercicios.

1. Resolver y graficar la ecuación de segundo grado dada por: :math:`2x^2 - 3x +1 = 0`.

2. 


Tipo de Datos ``DataFrame``
---------------------------

Ejemplo. Construcción de un dataframe de 12 sujetos cuyo nombre inicia con "Juan" y hay tres variables adicionales,
**peso** con distribución normal con media 57 y desviación estándar de 5, **edad** con distribución uniforme de 40 a 60 años y 
**altura** con distribución normal con media 1.65 m. y desviación estándar de 5 cm.

Solución:

.. code:: R

   nombre <- paste('Juan',1:12)
   peso <- round(rnorm(12, mean=57, sd=5))
   edad <- round(runif(12, min=40, max=60))
   altura <- round(rnorm(12, mean=165, sd=5))

   datos <- dataframe(nombre, peso, edad, altura)


