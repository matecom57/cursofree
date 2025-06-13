library(ggplot2)

p <- ggplot(diamonds) + 
  geom_histogram(bins = 50, aes(x = carat), fill = 'steelblue') + 
  xlab("Carat") + 
  ylab("Frecuencia") + 
  ggtitle("Distribución de la variable Carat") +
  theme_minimal()

print(p)
