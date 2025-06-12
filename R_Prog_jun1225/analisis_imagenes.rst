Análisis de Imagen
==================

En este ejemplo se mostrara como leer una imajen JPG, desplegarla, hacer su histograma y
umbralizar alguna region de interés.

.. code:: R

   ## install.packages('jpeg')

   library(jpeg)

   img <- readJPEG('img.jpg')

   dd = dim(img)

   img = img[,,1]

   print(min(img))
   print(max(img))

   img = round(256*img)

   par(mfrow=c(2,2))

   image(img, col = gray.colors(256))

   nx = dd[1]
   ny = dd[2]

   x = img

   dim(x) = c(1, nx*ny)

   hist(x)

   imgB = img * (img > 50)

   image(imgB, col = gray.colors(256))


La curva mariposa (en inglés butterfly curve) es una curva plana trascendente descubierta por Temple H. Fay. Viene definida por 
las siguientes ecuaciones paramétricas:

.. code::

   # https://es.wikipedia.org/wiki/Curva_mariposa_(trascendente)

   np = 10

   t <- seq(0, np*2*pi, .01)

   r = exp(cos(t)) - 2* cos(4*t) - sin(t/12)^5

   x = r*sin(t)
   y = r*cos(t)

   plot(x,y, type='l', col='red')
