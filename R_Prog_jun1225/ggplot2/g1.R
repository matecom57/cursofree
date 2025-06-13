library(ggplot2)

p <- ggplot(mtcars, aes(wt, mpg)) + geom_point(colour = "red", size = 3)


print(p)


