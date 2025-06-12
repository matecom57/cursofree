# https://es.wikipedia.org/wiki/Curva_mariposa_(trascendente)

np = 10

t <- seq(0, np*2*pi, .01)

r = exp(cos(t)) - 2* cos(4*t) - sin(t/12)^5

x = r*sin(t)
y = r*cos(t)

plot(x,y, type='l', col='red')


