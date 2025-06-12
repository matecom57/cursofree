# https://es.wikipedia.org/wiki/Conjunto_de_Mandelbrot

cc = seq(-2,2,.01)

plot(c(-4,4),c(-4,4))

img = matrix(rep(0,1000*1000), ncol=1000)

for (x in cc){
  for (y in cc){
    c = complex(real=x, imaginary =y)
    z=0
    for (i in 1:1000){
       z = z^2 + c
    }
    if(abs(z)<=100){
      ix = round((x+2)*999/4) + 1
      iy = round((y+2)*999/4) + 1
      img[ix,iy] = 1
    }
  }
}

image(img)




