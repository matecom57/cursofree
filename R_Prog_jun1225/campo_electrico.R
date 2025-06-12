Teta <- function(x=0, y=0){
  te = atan(y/x)
  if ( y>= 0){
    ex = sin(te)
    ey = cos(te)
  } else {
    ey = -cos(te)
    if (x < 0){
      ex = -sin(te)
    }else{
      ex = -sin(te)
    }
  }
  res = c(ex, ey)
}


Campo_electrico <- function(carga=0,posP = 0, posA = 0){
   dx = posA[1] - posP[1]
   dy = posA[2] - posP[2]
   E = carga/(dx^2 + dy^2)
   teta = Teta(dx, dy)
   Ex = E*teta[1]
   Ey = E*teta[2]
   res = c(Ex, Ey)
}

carga1 = 1
pos1 = c(1,0)

carga2 = -1
pos2 = c(2,0)

x1 = -5
x2 = 5
plot(c(x1,x2), c(x1,x2))

cc = seq(-4,4, 2)
print(cc)

np = length(cc)

et = matrix(rep(0, np*np*4, ncol=4)

k=1  
for (x in cc){
  for (y in cc){
    ee1 = Campo_electrico(carga1,pos1, c(x,y))
    ee2 = Campo_electrico(carga2,pos2, c(x,y))
    
    ex = (ee1[1] + ee2[1])/1000
    ey = (ee1[2] + ee2[2])/1000
    print(c(ex, ey))
    points(c(x,ex), c(y, ey), type='l')
  }
}

print(Teta(1,1))
print(Teta(-1,1))
print(Teta(-1,-1))
print(Teta(1,-1))

