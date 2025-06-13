ggplot2
=======

geom_bar
--------

.. code:: R

   g <- ggplot(mpg, aes(class))
   g <- g + geom_bar()
   print(p)

geom_boxplot
------------

.. code:: R

   p <- ggplot(mpg, aes(class, hwy))
   p <- p + geom_boxplot()
   print(p)

geom_histogram	
--------------

.. code:: R

   p <- ggplot(diamonds, aes(carat)) +
     geom_histogram()
   print(p)

geom_line	
---------

.. code:: R

   p <- ggplot(economics, aes(date, unemploy)) + geom_line()
   print(p)


geom_point	
----------

.. code:: R

   p <- ggplot(mtcars, aes(wt, mpg)) +
      geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)
   print(p)




