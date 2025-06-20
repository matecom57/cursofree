Programas del Cap. 8
====================

.. code:: R

   datos <- read.csv('EXA_C08_S02_01.csv', header=T)
   print(names(datos))

   attach(datos)

   ven <- VEN[!is.na(VEN)]
   squ <- SQU[!is.na(SQU)]
   rrb <- RRB[!is.na(RRB)]
   nrb <- NRB[!is.na(NRB)]

   n1 = length(ven)
   n2 = length(squ)
   n3 = length(rrb)
   n4 = length(nrb)

   carne = c(ven, squ, rrb, nrb)
   fac = as.factor(c(rep(1, n1), rep(2, n2),rep(3, n3),rep(4, n4)))

   boxplot(carne ~ fac)

   res <- aov(carne ~ fac)

   print(summary(res))

   print(TukeyHSD(res))

=============================================================

.. code:: R

   me_A = c(7,8,9,10,11)
   me_B = c(9,9,9,9,12)
   me_C = c(10,10,12,12,14)

   edad <- rep(1:5, 3)

   y = c(me_A, me_B, me_C)
   metodo = rep(1:3, c(5,5,5))

   boxplot(y~ as.factor(metodo))

   res <- aov(y~ as.factor(metodo) + as.factor(edad))
 
   print(summary(res))
 
   print(TukeyHSD(res))
