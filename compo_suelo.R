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