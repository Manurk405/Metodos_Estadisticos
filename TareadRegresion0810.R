# Ejercicio 1
read.csv("erupciones.csv")
datos <- read.csv("erupciones.csv")
espera <- datos$waiting
duracion <- datos$eruptions

# Media 
mean(espera)
mean(duracion)

# Varianzas
var(espera)
var(duracion)

# Desviacion estandar 
sd(espera)
sd(duracion)

# Coeficiente de correlacion (r)
cor(espera, duracion)

# Significancia de la correlacion 
cor.test(espera, duracion)

modelo_geyser <- lm(duracion ~ espera)
summary(modelo_geyser)

nuevostiempos <- data.frame(espera = c(80, 40, 45, 53, 61))

# Predicciones 
prediciongeyser <- predict(modelo_geyser, nuevostiempos)
cbind(nuevostiempos, Y_estimada = prediciongeyser)

# Hipotesis nula: No existe una realacion lineal entre el tiempo de espera y la duracion de la erupcion 
# Hipotesis alternativa: Existe una relacion significativa entre el tiempo y la duracion de la erupcion 
# Valor del intecpeto: -1.8740
# valor de la pendiente: 0.0756
# Analisis de regrecion: p = 2.2+10^-16
# significancia de las regreciones: son altamente significativas ya que el valor de p es mucho meno a 0.05
# significancia de al regreison: Es altamente significatica y predice de manera confiavle la duracion del la erupcion 

# Ejercicio 2
                               

datos <- read.csv("datos_control_Rascon.csv")

modelo <- lm(EDAD ~ DAP, data = datos)

summary(modelo)

nuevos_dap <- data.frame(DAP = c(12, 20, 26, 34, 45))

# Predecir la edad 
y_estimada <- predict(modelo, newdata = nuevos_dap)

cuadro_4 <- data.frame(No = 1:5, X = nuevos_dap$DAP, Y_estimada = round(y_estimada, 2))
print(cuadro_4)
# Establecer la Hipótesis nula: La pendiente de la recta es igual a cero. Es decir, no existe una relación lineal significativa entre el diámetro a la altura del pecho y la edad del árbol.  
# Establecer la Hipótesis alternativa: La pendiente de la recta es diferente de cero. Esto indica que sí existe una relación lineal significativa entre el diámetro a la altura del pecho y la edad.  
# ¿Cuál es el valor del intercepto? -8.4803.  
# ¿Cuál es el valor de la pendiente? 2.4316.  
# Realizar un análisis de regresión: La ecuación del modelo se establece como EDAD = -8.4803 + 2.4316(DAP). El análisis arroja un coeficiente de determinación R^2 = 0.633, explicando el 63.3% de la varianza en la edad. El valor P (P-value) general del modelo es 3.20x10^-14.  
# ¿Son significativas las regresoras: intercepto y la pendiente?  
# El intercepto no es significativo (P-value = 0.168), ya que su valor es superior al umbral estándar de 0.05.
# La pendiente sí es altamente significativa (P-value < 0.001), evidenciando que el DAP es un predictor confiable de la edad.
# ¿Es significativa la regresión? Sí, la regresión es significativa. El P-value general del modelo es considerablemente menor al nivel de significancia de 0.05, por lo que se rechaza la hipótesis nula.
# No  X Y_estimada
# 1  1 12      20.70
# 2  2 20      40.15
# 3  3 26      54.74
# 4  4 34      74.19
# 5  5 45     100.94