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

# conocer la varianza de cada grupo

df_Ctrl <- subset(Obs, Tratamiento == "Ctrl")
df_Fert <- subset(Obs, Tratamiento != "Ctrl")
df_Fert <- subset(Obs, Tratamiento == "Fert")

var(df_Ctrl$IE)
var(df_Fert$IE)
mean(df_Ctrl$IE)
mean(df_Fert$IE)

# La varianza del grupo fertilizado es 3 veces mayor que la varianza 
# del grupo control 
# Pregunta
# ¿Seran las varianzas iguales o difrentes estadisticamente?

#¿Proviene de una distribucion normal ambos grupos?
shapiro.test(df_Ctrl$IE)
# Grupo Crtl proviene de una distribucion normal 
shapiro.test(df_Fert$IE)
# Grupo Fert sigue una distribucion normal 


# ¿seran las varianzas iguale o diferentes estadisticamente?

var.test(df_Ctrl$IE, df_Fert$IE)

# Las varianzas de ambos grupos son iguales


# Exisiten difernecias entre los tratamientos 

t.test(df_Ctrl$IE, df_Fert$IE, var.equal = TRUE)

# si la pregunta es que Fert es mayor que ctrl 

t.test(df_Fert$IE, df_Ctrl$IE,  var.equal = T,
       alternative = "greater")
