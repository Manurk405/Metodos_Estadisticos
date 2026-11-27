# Examen 1: Inferencias sobre una poblacion

# Ingreso de los 44 datos (peso en kg)
costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94,
            80.7, 82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89,
            82.95, 73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01,
            80.47, 76.23, 78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29,
            75.52, 77.21, 75.99, 81.94, 80.41, 77.7)

# 1. Significado de H0 y H1
# H0 (Hipotesis nula): El peso promedio real de todos los costales es igual a 80 kg.
# H1 (Hipotesis alternativa): El peso promedio real de los costales es menor a 80 kg.

# 2. Por que corresponde una prueba de una cola
# Porque la pregunta busca comprobar especificamente si la media es menor a 80 kg (cola izquierda) y no simplemente diferente.

# 3. Media y desviacion estandar muestral
mean(costal)
sd(costal)

# 4. Prueba t de Student de una muestra
t.test(costal, mu = 80, alternative = "less")

# 5. Comparacion del valor de p con alfa = 0.05
# Como p = 0.01141 es menor que alfa = 0.05, se rechaza la hipotesis nula (H0).

# 6. Conclusion en el contexto del problema
# Con un nivel de significancia de 0.05, existe evidencia estadistica suficiente para afirmar que los costales contienen, en promedio, menos de 80 kg.