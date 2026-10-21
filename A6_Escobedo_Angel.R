# ==============================================================================
# Asignación 6: Regresión lineal
# Ejercicio 1. Relación entre el diámetro (DAP) y la edad en Pinus arizonica
# ------------------------------------------------------------------------------
# Nombre del alumno:Angel Manuel Escobedo Arredondo
# Matrícula:1970881
# Fecha:21/10/2026
# ==============================================================================


# ------------------------------------------------------------------------------
# 0. Preparación
# ------------------------------------------------------------------------------
# - Cargue los paquetes que vaya a utilizar (si los necesita).
# - Defina la dirección de los datos:
#   https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1




# ------------------------------------------------------------------------------
# 1. Importación y exploración de los datos
# ------------------------------------------------------------------------------
# - Importe los datos y guárdelos en un objeto.
# - Revise la estructura, los nombres de las variables y el número de árboles.
# - Obtenga estadísticos descriptivos de DAP y EDAD.




# Número de árboles (n): 60
# Comentario sobre los datos:


# ------------------------------------------------------------------------------
# 2. Diagrama de dispersión
# ------------------------------------------------------------------------------
# - Grafique DAP (eje x, variable independiente) contra EDAD (eje y, variable
#   dependiente). Incluya etiquetas de ejes con unidades.




# ¿Qué patrón observa? (forma, dirección, valores atípicos):
# los valores tiene una forma conica con los valores agupados siguiendo una
# trayectoria recta. Tiene una direccion postiva acendente de izquierda a 
# derecha. Existen valores atipicos que se alejan de la tendencia central.
# ------------------------------------------------------------------------------
# 3. Hipótesis
# ------------------------------------------------------------------------------
# H0 (en palabras):El DAP no tiene efecto sobre la edad de el arbol
# H0 (en notación):β = 0
#
# H1 (en palabras):El DAP predice significativamente la edad de una arbol
# H1 (en notación):β ≠ 0
#
# Nivel de significancia:0.05


# ------------------------------------------------------------------------------
# 4. Ajuste del modelo de regresión lineal simple
# ------------------------------------------------------------------------------
# Modelo: EDAD = alpha + beta * DAP + error
# - Ajuste el modelo y guárdelo en un objeto.
# - Muestre el resumen del modelo.




# ------------------------------------------------------------------------------
# 5. Coeficientes
# ------------------------------------------------------------------------------
# Intercepto (alpha): -8.4803 
# Interpretación: Es la edad teorica estimada de un arbol cuando su DAP es 0
#
# Pendiente (beta): 2.4316 
# Interpretación (años por cada cm de DAP): son los años que aumenta por cada 
# centimentro en el DAP
#
# Ecuación ajustada:  EDAD estimada = -8.4803+2.4316*DAP


# ------------------------------------------------------------------------------
# 6. Significancia
# ------------------------------------------------------------------------------
# a) Intercepto      -> p-value: 0.168           ¿Significativo? (Sí/No):NO
# b) Pendiente       -> p-value: 3.2e-14       ¿Significativo? (Sí/No):SI
# c) Regresión       -> F: 99.83       gl:1 y 58      p-value:3.201e-14
#    ¿Es significativa la regresión? (Sí/No):SI
# d) R2:0.6325
#    Interpretación:El DAP explia el 63.25% de la variacion de edad de los
#    arboles
#
# Decisión sobre H0: Se rechaza la hipotesis nula la que existe evidencia 
# suficiente para afirmar que el DAP predice sinificativamente la edad de un
# arbol 

# ------------------------------------------------------------------------------
# 7. Gráfica con la recta de regresión
# ------------------------------------------------------------------------------
# - Agregue la recta ajustada al diagrama de dispersión del paso 2.




# ------------------------------------------------------------------------------
# 8. Predicción de la edad
# ------------------------------------------------------------------------------
# - Cree un objeto con los DAP a estimar: 12, 20, 26, 34 y 45 cm.
# - Calcule la edad estimada aplicando la ecuación ajustada (cálculo manual).
# - Verifique los resultados usando el modelo ajustado.
# - Presente los resultados en una tabla.




# | No. | DAP (cm) | Edad estimada (años) |
# |-----|----------|----------------------|
# |  1  |    12    |     20.69850         |
# |  2  |    20    |     40.15101         |
# |  3  |    26    |     54.74040         |
# |  4  |    34    |     74.19291         |
# |  5  |    45    |     100.94012        |
#
# ¿Algún DAP queda fuera del intervalo observado en los datos?
# Todos los valores quedan cerca de la recta de tendencia central 

# ------------------------------------------------------------------------------
# 9. Conclusión: el p-value del modelo es significativo y el R es razonablemente
#                alto, por lo que se puede considerar que el DAP es un buen 
#                predictor para la edad del pinus arizonica 
# ------------------------------------------------------------------------------
# ¿Es el DAP un buen predictor de la edad en Pinus arizonica?
# Si, el DAP es un predictor significativo de la edad del arbol
# Una limitación del modelo:
# Una limitacion del modelo podria ser la prediccion de la edad de un arbol con
# DAP menor a 8cm o mayor a 46 cm ya que puede generar estimaciones invalidas.
