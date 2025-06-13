rm(list=ls())

x1 <- c(52.67, 48.42, 57.46, 56.98, 54.10, 53.05, 56.81, 59.29, 52.60, 58.46, 60.95, 45.30)

x2 <- c(50.49, 54.62, 63.45, 52.70, 56.17, 63.27, 65.79, 57.04, 79.00, 61.11, 62.46, 65.82, 63.70, 59.62)

x3 <- c(51.68, 46.73, 50.15, 50.70, 54.42, 62.74, 50.47, 46.59, 55.55, 50.84, 53.81, 49.80)

m1 = mean(x1)
m2 = mean(x2)
m3 = mean(x3)

esd1 = sd(x1)/sqrt(length(x1))
esd2 = sd(x2)/sqrt(length(x2))
esd3 = sd(x3)/sqrt(length(x3))

m = c(m1, m2, m3)
s = c(esd1, esd2, esd3)

b = barplot(c(m1, m2, m3), ylim=c(0, 80), names = c('X1', 'X2', 'X3'))

for (i in 1:3){
   points(c(b[i], b[i]), c(m[i]-s[i], m[i]+s[i]), type='l', lwd=3, col='red')
}

points(c(0, b[3]+(b[2]-b[1])), c(0,0), type='l', lwd=4, col='blue')


