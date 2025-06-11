Estructuras de Control
======================

Estructuras de control nos ayudaran para ejecutar una sección de código en base alguna condición de interes o 
cuidar el proceso del algoritmo que resuelve el problema.

.. code:: R

   ban = 1
   if (ban) {
      print('verdadero')
   }


.. code:: R
   
   ban = 0
   if (ban) {
      print('verdadero')
   } else {
      print('falso')
   }

.. code:: R

   fac <- 1
   for (i in 2:10){
     fac = fac*i
   }
   fac

.. code:: R

   fac <- 1
   i=2
   while (i < 11){
     fac = fac*i
     i = i+1
   }
   fac


