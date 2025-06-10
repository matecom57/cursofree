R como una Calculadora
======================

**Sistemas de Numeración**

.. math::

   \mathbb{N} = \{1,2,3,4,...\}

   \mathbb{Z} = \{... -3, -2, -1, 0, 1, 2, ,3, 4,...\}

   \mathbb{Q} = \{\frac{p}{q} | p, q \in  \mathbb{Z},\text{ con } q \neq 0 \}

   \mathbb{I} = \{ \pi, -2\pi, e, \sqrt{2}, ... \}

    \mathbb{R} =  \mathbb{Q} \cap \mathbb{I}   

Operadores Aritméticos: +, -, *, /, ^

Operadores de Comparación: :math:`<, \leq, >, \geq, ==, !=`

Operadores Lógicos: &, |

Algunas constantes en R: ``pi, Inf, NaN, NA, TRUE, FALSE``
 
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
   
**Vectorees**

  Un vector es una secuencia de números dado como: :math:`{x_1, x_2, x_3, ..., x_n}`
  En R se pueden definir vectores de la siguiente manera:


   ``c(5,4,3,55,77,77)`` se utiliza la función ``c()``

   ``3:10`` - ecuencia de números 3,4,5,6,7,8,9,10 con ``:``

   ``-5:4`` - secuencia de números -5, -4, -3, -2, -1, 0, 1, 2, 3, 4

   ``seq(0,1,.3)`` - secuencia de números con incrementos de .3 a partir de cero con la función ``seq()``

   ``rnorm(14, mean=55, sd=5)`` - genera 14 números aleatorios de una distribución normal con media de 55 y dessviación estándard de 5.

Otras maneras de generar vectores:

1. Dado el vector ``v=c(55, 60, 74, 33, 44, 55, 44, 33, 55, 33)``.

.. code:: R

   v[v>45] # vector cuyos elementos son mayores que 45
   v[v>40 & v<50]
   v[c(2,4,6)]  

**Matrices**

Una matriz se define como:

.. math::

   \begin{pmatrix}
   x_{11} & x_{12} & ... & x_{1n}  \\
   x_{11} & x_{12} & ... & x_{1n}  \\
   \vdots & \vdots  & \ddots & \vdots  \\
   x_{m1} & x_{m2} & ... & x_{mn}  \\
   \end{pmatrix}

Esuna matriz de tamaño :math:`m \times n`

 


