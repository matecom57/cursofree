TEMA 3: PROBABILIDAD ELEMENTAL
==============================

3.1 ESPACIO MUESTRA Y EVENTO
----------------------------

Al conjunto de todos los posibles resultados de un experimento se llama **ESPACIO MUESTRA** o **ESPACIO MUESTRAL**, 
del 
experimento, y 
se denota por **S**. A cada resultado del experimento se le llama **elemento** o **punto** de S. Se dice que un espacio 
muestra es finito 
o infinito, cuando el conjunto S tiene un número finito o infinito de elementos, respectivamente.

En muchos problemas prácticos no estamos tan interesados en los resultados individuales, del experimento sino en el hecho de 
que un resulta do se encuentre contenido en un cierto conjunto de resultados. Es claro que cada conjunto de este tipo es un 
subconjunto del espacio muestra S, Este subconjunto se llama **EVENTO**.

3.2 EVENTOS MUTUAMENTE EXCLUSIVOS:
----------------------------------

Dos eventos A y B que no ocurren simultáneamente o que no tienen elementos en común, es decir :math:`A \cap B` se les llama 
eventos mutuamente exclusivos o mutuamente excluyentes.

3.4 EVENTOS COMPLEMENTARIOS:
----------------------------

Dos eventos A y B son complementarios sí :math:`A \cup B=S` y :math:`A \cap B = \varnothing` y B se le denota por 
:math:`A^c`.

**Ejemplo**. Sea el experimento de sacar dos fusibles ambos a la vez de una caja que contiene 5 fusibles 
(supongamos que están 
marcados con las letras ``a, b, c, d, y e``) y de los cuales 3 están defectuosos (supongamos que los defectuosos son ``b, c``, 
y ``d``).

El espacio muestra es el conjunto de las formas en que se pueden sacar dos fusibles de los cinco.

S = {ab, ac, ad, ae, be, bd, be, cd, ce, de}

:math:`n(S) = \binom{5}{2} = 10`

Algunos eventos son:

1) El evento A en que ninguno de los dos fusibles sean defectuosos.

2) El evento B, en que uno de los dos fusibles es defectuoso.

3) El evento C, en que uno o más fusibles son defectuosos

4) El evento D, en que los dos fusibles son defectuosos

Estos se pueden escribir asi:

A = {ae}

B = {ab, ac, ad, be, ce, de}

C = {ab, ac, ad, be, bd, be, cd, ce, de}

D = {be, bd, cd}

Los eventos A y B; A y D; B y D; A y C son mutuamente exclusivos, es decir, :math:`A \cap B = \varnothing; A \cap D = 
\varnothing; B \cap D = \varnothing` y  :math:`A \cap C = \varnothing`

Los eventos A y C son además complementarios, o sea, :math:`A \cap C = \varnothing` y :math:`A \cup C = S`

3.5 DEFINICIONES DE PROBABILIDAD:
---------------------------------

Antes de profundizar en la forma como se utilizan las probabilidades, es necesario conocer de cierta manera de donde 
provienen. Hay tres formas de calcular o estimar la probabilidad. El enfoque clásico o **"a priori"** proveniente de los 
juegos 
de azar o definición clásica de Laplace que se emplea cuando los espacios muéstrales son finitos y tienen resultados 
igualmente probables; la definición empírica, **"a posteriori"** o frecuencial que se basa en la frecuencia relativa de 
ocurrencia 
de un evento con respecto a un gran número de ensayos repetidos y por último la definición de Kolmogorov o definición 
axiomática o matemática de la probabilidad.

Seleccionar uno de los tres enfoques dependerá de la naturaleza del problema.

3.7.1 DEFINICION CLASICA DE LAPLACE 0 "A PRIORI'
------------------------------------------------

Esta definición es de uso limitado puesto que descansa sobre la base de las dos siguientes condiciones:

i) El espacio muestra de todos los resultados posibles S es finito.

ii) Los resultados del espacio muestra deben ser igualmente probables.

Bajo estas condiciones y si A es el evento formado por n(A) resultados del espacio muestra y, el número total de resultados 
posibles es n(S), entonces :math:`P(A) = \frac{n(A)}{n(B)}`

**Ejemplo :**

Si se saca una carta de un paquete de 52 cartas
de las cuales 26 son negras: 13 espadas A, 2, 3, , 10, J, Q, K; y 13 son tréboles; y 26 son rojas: (13 corazones y 13 
diamantes), la probabilidad de que la carta sea un as es :math:`\frac{4}{52}=0.0769` porque el evento de "sacar un as" consta 
de 4 de los 52 resultados 
igualmente probables. La probabilidad de que la carta sea negra es :math:`\frac{26}{52}` probabilidad de que sea un diamente 
es :math:`\frac{13}{52}`

**Ejemplo**. Al lanzar un dado,¿cuál es la probabilidad de obtener un número par?

Solución: P(un número par) = :math:`\frac{3}{6}` = 0.50


**Ejemplo**. ¿Cuál es la probabilidad de que una familia que tiene tres hijos, hayan dos mujeres y un varón, si se considera 
igualmente probable el nacimiento de un niño o niña?

Solución: S = {MMM , MMV , MVM , MVV , VMM , VMV , VVM , VVV}

n(S) = 8

El evento A en que hayan dos mujeres y un varón

A = {MMV , MVM , VMM}

n(A) = 3

:math:`P(A) = \frac{n(A)}{n(S)} = \frac{3}{8} = 0.3750`

Cabe señalar que :math:`0 \leq P(A) \leq 1`, puesto que :math:`0 \leq n(A) \leq n(S)`


3.7 DEFINICION EMPIRICA, "A POSTERIORI" 0 FRECUENCIAL:
------------------------------------------------------

La definición clásica se ve limitada a situaciones en las que hay un número finito de resultados igualmente probables. Por 
desgracia, hay pro blemas prácticos que no son de este tipo y la definición de Laplace no se puede aplicar. Por ejemplo, si se 
pregunta por la probabilidad de que un paciente sea curado mediante cierto tratamiento médico, o la probabilidad de que una 
determinada máquina produzca artículos defectuosos, entonces no hay forma de introducir resultados igualmente probables. Por 
ello se necesita un concepto más general de probabilidad. Una forma de dar respuesta a estas preguntas es obtener algunos 
datos empíricos en un intento por estimar las probabilidades. Supongamos que efectuamos un experimento n veces y que en esta 
serie de n ensayos el evento A ocurre 
exactamente r veces, entonces la frecuencia relativa del evento es :math:`\fac{r}{n}` o sea, :math:`f_r(E)= F(E) = \fac{r}{n}`

Si continuamos calculando esta frecuencia relativa cada cierto número de ensayos, a medida que aumentamos n, las frecuencias 
relativas correspondientes serán más estables; es decir; tienden a ser casi las mis_ mas; en este caso decimos que el 
experimento muestra regularidad estadistica, o estabilidad de las frecuencias relativas. Esto se ilustra en la si guiente 
tabla, de una moneda lanzada al aire 1000 veces.

La gran mayoría de experimentos aleatorios de importancia prácti ca tienen estabilidad, por esto podemos sospechar que 
prácticamente será cierto que la frecuencia relativa de un evento E en un gran número de ensa_ yos es aproximadamente igual a 
un determinado número P(E) , o sea, la probabilidad del evento E es :math:`\lim_{n \to \infty} \frac{r}{n}`

Obsérvese que este número no es una propiedad que depende solamente de E, sino que se refiere a un cierto espacio muestra S y 
a un experimento aleatorio. Entonces, decir que el evento £ tiene probabilidad P(E) significa que si efectuamos el experimento 
muchas veces, es práticamente cierto que la frecuencia relativa de E, (E) es aproximadamente igual a P(E).

Cuando se usa la definición frecuencial, es importante tomar en cuenta los siguientes aspectos:

i) La probabilidad obtenida de esta manera es únicamente una estimación del valor real.

ii) Cuanto mayor sea el número de ensayos, tanto mejor será la estimación de la probabilidad; es decir, a mayor número de 
ensayos mejor será la estimación.

iii) La probabilidad es propia de solo un conjunto de condiciones idénticas a aquéllas en las que se obtuvieron los datos, o 
sea, la validez de emplear esta definición depende de que las condiciones en que se realizó el experimento sean repetidas 
idénticamente.

3.7 DEFINICION AXIOMATICA 0 MATEMATICA DE KOLMOGOROV:
-----------------------------------------------------

Las definiciones anteriores son netamente empíricas o experimentales, sin embargo después de establecer una forma de 
determinar la probabilidad experimentalmente, se pueden deducir leyes o propiedades de la pro' babilidad en forma lógica o 
computacional bajo ciertas suposiciones llamados axiomas de la probabilidad.


La probabilidad de un evento A se define como el número P(A), tal que cumple con los siguientes axiomas:

AXIOMA 1: La probabilidad P(A) de cualquier evento no debe ser menor que cero ni mayor que uno

.. math:

   0 \leq P(A) \leq 1


AXIOMA 2: P(S) = 1

AXIOMA 3: Si A y B son dos eventos mutuamente exclusivos ( :math:`A \cap B = \varnothing` entonces :math:`P(A \cup B) = P(A) + 
P(B)` 

Toda la teoría elemental de la probabilidad está construida sobre las bases de estos tres simples axiomas.

Si el espacio muestral es infinito, debemos reemplazar el axioma 3 por el AXIOMA 3*: Si :math:`A_1, A_2,...` son eventos 
mutuamente 
exclusivos , entonces tenemos que :math:`P(A_1 \cup A_2 \cup ...) = P(A_1) +P(A_2)+...`


3.8 DETERMINACION PRACTICA DE PROBABILIDADES:
---------------------------------------------

La determinación práctica de probabilidades depende del problema que se presente, si tenemos un espacio muestra finito con 
resultados igualmente probables, utilizaremos el concepto clásico de probabilidad, ya que éste satisface los tres axiomas de 
la definición matemática de probabilidad.

Si la naturaleza del experimento no señala que el número finito de resultados tenga igual posibilidad de ocurrir, o si el 
espacio muestra no es finito y la naturaleza del experimento no indica como subdividir el espacio muestra en un número finito 
de eventos igualmente probables, se deben asignar probabilidades usando las frecuencias relativas que se observen en largas 
secuencias de ensayos. Esto se debe hacer de manera que los axiomas de la probabilidad se satisfagan. De esta manera obtenemos 
valores aproximados, pero esto no tiene importancia.

A veces la probabilidad del evento A se reporta como P(A)xl00, que significa que cada 100 veces que se realice el experimento, 
P(A)xl00 veces se verifica el, evento A, asi por ejemplo, Si P(A) = 0.25, se puede decir que el evento A tiene una 
probabilidad de 25% 
o que el evento ocurre 25% de las veces.

3.9 PROPIEDADES EE LA PROBABILIDAD
----------------------------------

Proposición 3.1: :math:`P(\varnothing) = 0`

Proposición 3.2:

Demostración:

Sabemos que Por el axioma 3: Despejando:

(Regla de la adición para eventos mutuamente ex clusivos).

Si son eventos mutuamente ex clusivos, entonces


