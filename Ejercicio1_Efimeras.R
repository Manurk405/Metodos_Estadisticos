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
 

