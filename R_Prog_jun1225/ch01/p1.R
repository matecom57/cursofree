datos <- read.csv('EXA_C01_S04_01.csv', header=T)

attach(datos)

print(summary(AGE))

ss = sample(AGE, 12)

print(ss)


