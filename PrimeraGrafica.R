# MaGT
# Matricula 
# 19/08/2026

# importar datos ----
# usar la funcion "read.csv" para importar datos de excel.

Obs <- read.csv("Vivero.csv", header = TRUE)

# Declarar columna de tratamiento como un factor y sus niveles 
# Se utilizo la funcion "as.factor"

Obs$Tratamiento <- as.factor(Obs$Tratamiento)
Obs$Tratamiento

# Grafica----
# boxplot de los datos 

boxplot(Obs$IE ~ Obs$Tratamiento,
        xlab = "Factor = Fertilizante",
        ylab = "Indice (IE)",
        col = "green")


     

