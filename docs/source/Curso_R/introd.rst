Introducción al Lenguaje "R"
==========================

Este lenguage es cientifico, facíl de aprender, consta de muchos paquetes utiles que se utilizan
en diversas disiplinas centificas, es libre. Todo lenguaje de programación consta de lo siguiente:

1. Tipos de Datos
2. Operadores Aritmèticos
3. Operadores de Comparación 
4. Operadores Lógicos 
5. Constantes
6. Estructuras de Control
7. Funciones


Tipos de Datos
--------------

Para empezar R maneja principalmente, números enteros, números reales, string's (cadenas de caracteres).
Para estos tipos de datos, R tiene varias estructuras de almacenamiento, por ejemplo: **vectores, matrices, arreglos, 
listas** y 
**dataframes**. Veamos cada una de las estructuras:

Vectores
--------

  Un vector es una secuencia de números dado como: :math:`{x_1, x_2, x_3, ..., x_n}`.
  En R se pueden definir vectores de la siguiente manera:


   ``c(5,4,3,55,77,77)`` se utiliza la función ``c()``

   ``3:10`` - ecuencia de números 3,4,5,6,7,8,9,10 con ``:``

   ``-5:4`` - secuencia de números -5, -4, -3, -2, -1, 0, 1, 2, 3, 4

   ``seq(0,1,.3)`` - secuencia de números con incrementos de .3 a partir de cero con la función ``seq()``

   ``rnorm(14, mean=55, sd=5)`` - genera 14 números aleatorios de una distribución normal con media de 55 y dessviación 
estándard $

Otras maneras de generar vectores:

1. Dado el vector ``v=c(55, 60, 74, 33, 44, 55, 44, 33, 55, 33)``.

.. code:: R

   v[v>45] # vector cuyos elementos son mayores que 45
   v[v>40 & v<50]
   v[c(2,4,6)]


Operaciones en y entre Vectores
-------------------------------

Sea ``x <- 1:5, y <- c(2,1,2,3,2)```y ``z <- c(2,2,3,3,2``

.. code::

   x+y
   x/y
   x^y
   x + 2*y - z
   log(x)
   mean(x)
   sqrt(x)
   IQR(x) 

Matrices
--------

Una matriz en matemáticas se define:

.. math::

   \begin{pmatrix}
   x_{11} & x_{12} & ... & x_{1n}  \\
   x_{11} & x_{12} & ... & x_{1n}  \\
   \vdots & \vdots  & \ddots & \vdots  \\
   x_{m1} & x_{m2} & ... & x_{mn}  \\
   \end{pmatrix}

Es una matriz de tamaño :math:`m \times n`

Una matriz en R se define:

.. code:: R

   matrix(1:6, ncol=2) # matriz de tamaño 3 x 2

**AYUDA en matrix** 
   
.. code:: R

   matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
       dimnames = NULL)


Arguments

``data`` - an optional data vector (including a list or expression vector). Non-atomic classed R objects are coerced by
as.vector and all attributes discarded.

``nrow`` - the desired number of rows.

``ncol`` - the desired number of columns.

``byrow`` - logical. If FALSE (the default) the matrix is filled by columns, otherwise the matrix is filled by rows.
   
``dimnames`` - A dimnames attribute for the matrix: NULL or a list of length 2 giving the row and column names respectively.
An 
empty list is treated as NULL, and a list of length one as row names. The list can be named, and the list names will be used 
as na$
   
Otra froma de definir una matriz
--------------------------------

.. code:: R

   x <- 1:12 ; dim(x) <- c(3,4)
   x

Acesando elementos de matrices
------------------------------

Consideremos la matriz:

.. code:: R

   x <- 1:12 ; dim(x) <- c(3,4)
   x

   x[2,] # sacando los elementos de la fila 2
   x[c(1,3),] # sacando la fila 1 y 3
   x[,3] # sacando la columna 3

DataFrames
----------

Un dataframe es una estrucura parecida a una hoja de Excel, es decir tiene un header (nombres de columnas), cada columna
puede guardar string's, números, valores lógicos o otros tipos de datos. 

Ejemplos.

1. Construir y guardar un dataframe de 12 sujetos cuyo nombre inicia con "Juan" y hay tres variables adicionales,
**peso** con distribución normal con media 57 y desviación estándar de 5, **edad** con distribución uniforme de 40 a 60 años 
y 
**altura** con distribución normal con media 1.65 m. y desviación estándar de 5 cm.

Solución:

.. code:: R

   nombre <- paste('Juan',1:12, sep='')
   peso <- round(rnorm(12, mean=57, sd=5))
   edad <- round(runif(12, min=40, max=60))
   altura <- round(rnorm(12, mean=165, sd=5))

   datos <- data.frame(nombre, peso, edad, altura)

   write.csv(datos, 'dd.csv')

Ejemplo. Leer el archivo anterior y hacer lo siguiente:

1. Graficar la edad en base al sujeto.

2. Graficar peso vs altura y hacer una regresion lineal.

3. Hacer boxplot del peso y edad.

Listas
------

Una listas es una estructura que puede guardar cualquier estructura de datos, es decir, vectores, matrices, listas, 
dataframes, o bien otra.

Ejemplo 1: Creando una lista

.. code:: R

   x = 1:10
   y = matrix(1:12, ncol=3)
   z = list(x,y)
   z

Ejemplo 2. Accesando elementos de la lista

.. code:: R

   z[[2]][2,]  # sacando la fila 2 de la matriz
   z[[1]][3]   # sacando el valor 3

Ejemplo 2. Otra manera de crear una lista

.. code:: R

   x = 1:10
   y = matrix(1:12, ncol=3)
   z = list(a=x, b=y)
   z$a
   z$b



**String's**, "cadenas de caracteres"
------------------------------------

Ejemplos

1. "Hola" - longitud de 4 caracteres

2. 'Hola' 

3. 'Hola como estas'


Operadores Aritméticos
----------------------

 ``+, -, *, /, ^``

Operadores de Comparación
-------------------------

 :math:`<, \leq, >, \geq, ==, !=`

Operadores Lógicos
------------------

 ``&, |``

Algunas constantes en R
-----------------------

``pi, Inf, NaN, NA, TRUE, FALSE``
 
**Algunas Funciones**

``getwd()`` - obten el directorio de trabajo

``setwd()`` - define el directorio de trabajo

``dir()`` - lista el directorio de trabajo

``mean()`` - calcula la media artimética 

``median()`` - calcula la mediana 
   
``sqrt()`` - encuentra la raíz cuadrada

``IQR()`` -  encuentra el rango intercuartil

``quantile()`` - encuentra los cuantiles

``log()`` - encuentra el logaritmo de base e
   
**AYUDA en matrix**


Otras Funciones
---------------

``rnorm(), qnorm(), dnorm(), pnorm()`` - distribución normal

.. math::

   \varphi_{\mu, \sigma^2}(x) = \frac{1}{\sigma \sqrt{2 \pi}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}, x \in R

**Función de densidad de probabilidad**

.. image:: norm01.png
   :width: 50%

**Función de distribución de probabilidad**

.. image:: norm02.png
   :width: 50%


Graficación
-----------

Ejemplo 1.

.. code:: R

   x <- seq(-10,10, .1)
   y <- x^3 -2*x +1
   plot(x,y)


Ejemplo 2.

.. code:: R

   x <- 1:14
   y <- x + rnorm(14, sd=3)
   plot(x,y)
   res = lm(y ~ x)
   abline(res)
   
