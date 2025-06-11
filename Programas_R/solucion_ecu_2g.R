# solucion de una ecuacion de 2 grado
# 2x^2 - 3x + 1 = 0
# 2x^2 + 3x + 1 = 0
# 4x^2 + 3x + 1 = 0

rm(list=ls())

# solucion con la ecuacion  genral

a = 4
b = 3
c = 1

del = b^2 - 4*a*c

if (del >= 0){
  x1 = (-b + sqrt(del))/ (2*a)
  x2 = (-b - sqrt(del))/ (2*a)
} else {
  x1 = (-b + complex(imaginary= sqrt(-1*del)))/ (2*a)
  x2 = (-b - complex(imaginary= sqrt(-1*del)))/ (2*a)
}

print(c(x1, x2))
