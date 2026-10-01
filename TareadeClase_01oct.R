# Ejercicio 1 
# Datos 
speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)

# Grafico de dispercion 
plot(speed, abundance,
     main = "Velocidad del arroyo vs Abundiancia de efimeras",
     pch = 19, col = "green")

# Prueba de correlacion 
cor.test(speed, abundance, alternative = "greater", method = "pearson")

## Resultados 
# Existe una relacion entre los datos de manera significativa con valor de correspondencia de 0.8441 y se rechaza la hipotesis nula 
# Hipotesis nula: "No existe una correlacion entre la velocidad del arroyo y la abundancia de efimeras" # Acpetamos la Hipotesis alternativa: "Existe una correlacion positiva entre la velociadad de los arroyos y la abundancia de efimeras"
# Porque confomre aumenta la velocidad del el arroyo se puede observar un aunmento significativo.

## Ejercicio 2 Composisicon del suelo y caracteristicas fisicas y quimicas 

install.packages("corrplot")
library(corrplot)
suelo <- read.csv("suelo.csv")

# Correlación entre pH y Nitrógeno (N)
cor.test(suelo$pH, suelo$N)

# Correlación entre pH y Densidad (Dens)
cor.test(suelo$pH, suelo$Dens)

# Correlación entre pH y Fósforo (P)
cor.test(suelo$pH, suelo$P)

# Correlación entre pH y Calcio (Ca)
cor.test(suelo$pH, suelo$Ca)

# Correlación entre pH y Magnesio (Mg)
cor.test(suelo$pH, suelo$Mg)

# Correlación entre pH y Potasio (K)
cor.test(suelo$pH, suelo$K)

# Correlación entre pH y Sodio (Na)
cor.test(suelo$pH, suelo$Na)


datos_grafico <- suelo[, c("pH", "N", "Dens", "P", "Ca", "Mg", "K", "Na")]

matriz_correlaciones <- cor(datos_grafico)

corrplot(matriz_correlaciones, method = "circle", type = "upper", tl.col = "black")

## Ejercicio 3 Cuarteto de Anscombe
# Dividir la ventana de gráficos en 2 filas y 2 columnas
par(mfrow = c(2, 2))

# Gráfico 1: Relación lineal normal
plot(anscombe$x1, anscombe$y1, main = "Grupo 1", pch = 19, col = "darkorange")
abline(lm(y1 ~ x1, data = anscombe), col = "blue")

# Gráfico 2: Relación curva (no lineal)
plot(anscombe$x2, anscombe$y2, main = "Grupo 2", pch = 19, col = "darkorange")
abline(lm(y2 ~ x2, data = anscombe), col = "blue")

# Gráfico 3: Línea recta afectada por un valor atípico
plot(anscombe$x3, anscombe$y3, main = "Grupo 3", pch = 19, col = "darkorange")
abline(lm(y3 ~ x3, data = anscombe), col = "blue")

# Gráfico 4: Sin relación, pero un punto extremo altera todo
plot(anscombe$x4, anscombe$y4, main = "Grupo 4", pch = 19, col = "darkorange")
abline(lm(y4 ~ x4, data = anscombe), col = "blue")
