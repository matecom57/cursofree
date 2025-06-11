rm(list=ls())

datos <- read.csv('./ch01/EXA_C01_S04_01.csv', header=T)

print(names(datos))

edad = datos[,2]

print(summary(edad))

cat('media= ', mean(edad),'\n')
cat('mediana= ', median(edad),'\n')
cat('desviacion estndar= ', sd(edad),'\n')
cat('varianza= ', var(edad),'\n')
cat('iqr= ', IQR(edad),'\n')
cat('rango= ', range(edad),'\n')

par(mfrow=c(2,2))
plot(edad)
hist(edad)
ss = sort(edad)

plot(ss)








