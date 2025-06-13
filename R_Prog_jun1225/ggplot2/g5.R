library(ggplot2)
library(ggcorrplot)

corr <- round(cor(mtcars), 1)

p <- ggcorrplot(corr) +
  ggtitle("Correlograma del conjunto mtcars") +
  theme_minimal()

print(p)


