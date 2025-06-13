library(ggplot2)

p <- ggplot(data = mtcars, aes(x = gear)) + 
  geom_bar(color = 'darkslategray', fill = 'steelblue') + 
  xlab("Número de Velocidades") + 
  ylab("Cantidades") + 
  ggtitle("Gráfico de Barras")

print(p)




