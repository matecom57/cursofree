library("readxl")

datos <- read_excel("Libro1.xlsx")

print(class(datos))

dd <- as.data.frame(datos)

print(class(dd))


