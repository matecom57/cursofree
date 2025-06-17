PRUEBA DE HIPÓTESIS
===================

**Una hipótesis puede definirse simplemente como una afirmación sobre una o más poblaciones.**

Hay dos hipótesis estadísticas involucradas en la prueba de hipótesis, y estas deben enunciarse 
explícitamente:

* La hipótesis nula es la hipótesis que se va a probar. Se designa con el símbolo :math:`H_0`. La 
hipótesis nula a veces se denomina hipótesis de no diferencia.

En el proceso de prueba, la hipótesis nula se rechaza o no se rechaza. Si la hipótesis nula no se rechaza, 
diremos que los datos en los que se basa la prueba no proporcionan evidencia suficiente para causar el 
rechazo. Si el procedimiento de prueba conduce al rechazo, diremos que los datos en cuestión no son 
compatibles con la hipótesis nula, pero respaldan alguna otra hipótesis. 

* La hipótesis alternativa es una afirmación de lo que creeremos que es cierto si nuestros datos de muestra nos hacen rechazar la hipótesis 
nula. Generalmente, la hipótesis alternativa y la hipótesis de investigación son la misma; de hecho, ambos 
términos se usan indistintamente. Designaremos la hipótesis alternativa con el símbolo :math:`Ha`.

**Reglas para formular hipótesis estadísticas**

La hipótesis debe aparecer una indicación de igualdad (ya sea :math:`=, \leq, o \geq`) en la hipótesis nula.

Supongamos, por ejemplo, que queremos responder a la pregunta: ¿Podemos concluir que una determinada media 
poblacional no es 50? La hipótesis nula es

.. math::

   H_0: \mu = 50

* El ``nivel de significancia`` :math:`\alpha` es una probabilidad y, de hecho, es la probabilidad de 
rechazar una hipótesis 
nula verdadera.

* Un valor ``p`` es la probabilidad de que el valor calculado de un ``estadístico`` de prueba sea al menos 
tan 
extremo como un valor especificado del estadístico de prueba cuando la hipótesis nula es verdadera. Por lo 
tanto, el valor p es el valor mínimo de :math:`\alpha` para el cual podemos rechazar una hipótesis nula.

**PRUEBA DE HIPÓTESIS: UNA MEDIA POBLACIONAL ÚNICA**

**Muestreo de una población distribuida normalmente: varianza poblacional desconocida**

Cuando el muestreo proviene de una población aproximadamente normal con una varianza desconocida, la 
estadística de prueba para probar :math:`H_0 : \mu = m_0` es

.. math::

   t = \frac{\bar{x} - \mu_0}{s/\sqrt{n}}

que, cuando :math:`H_0` es verdadera, se distribuye como una ``t de Student`` con n - 1 grados de libertad. 

**PRUEBA DE HIPÓTESIS: LA DIFERENCIA ENTRE DOS MEDIAS POBLACIONALES**

Se pueden formular las siguientes hipótesis:

1. :math:`H_0: \mu_1 - \mu_2 = 0, `H_a: \mu_1 - \mu_2 \neq  0`

2. :math:`H_0: \mu_1 - \mu_2 \geq 0, `H_a: \mu_1 - \mu_2 <  0`

3. :math:`H_0: \mu_1 - \mu_2 \leq 0, `H_a: \mu_1 - \mu_2 >  0`

**COMPARACIONES POR PARES**

**PRUEBA DE HIPÓTESIS: VARIANZA DE UNA ÚNICA POBLACIÓN**

**PRUEBA DE HIPÓTESIS: LA RAZÓN DE DOS VARIANZAS POBLACIONALES**



