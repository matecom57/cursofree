Otras funciones
===============

.. code:: R

   apply {base}	R Documentation
   
   Apply Functions Over Array Margins


   Description

   Returns a vector or array or list of values obtained by applying a function to margins of an array or matrix.

   Usage

   apply(X, MARGIN, FUN, ..., simplify = TRUE)

   Arguments

   X	        an array, including a matrix.

   MARGIN	a vector giving the subscripts which the function will be applied over. E.g., 
                for a matrix 1 indicates rows, 2 indicates columns, c(1, 2) indicates rows and columns. 
                Where X has named dimnames, it can be a character vector selecting dimension names.

   FUN	        the function to be applied: see ‘Details’. In the case of functions like +, %*%, etc., the function name must be 
                backquoted or quoted.

   ...	        optional arguments to FUN.


Ejemplos: Consideremos la matriz: ``m <- matrix(1:12, ncol=3)``

Entonces:

.. code:: R

   mt = m
   ms = apply(m, 2, sum)
   mt = rbind(mt,ms)
   me = apply(mt, 1, mean)
   mt = cbind(mt,me)


