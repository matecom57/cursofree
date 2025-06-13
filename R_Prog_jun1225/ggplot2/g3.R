library(ggplot2)

p <- ggplot(data = mtcars, aes(x = gear, fill = as.factor(gear))) + 
  geom_bar() + 
  xlab("Número de Velocidades") + 
  ylab("Cantidades") + 
  ggtitle("Gráfico de Barras") +
  labs(fill = "Velocidades")

print(p)




