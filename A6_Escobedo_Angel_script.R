datos <- read.csv ("datos_control_Rascon.csv")
DAP_EDAD <- lm(EDAD ~ DAP, data = datos)
summary(DAP_EDAD)
plot(datos$DAP, datos$EDAD,
     xlab = "Diametro Altu Pecho (cm)",
     ylab = "EDAD (años)",
     pch = 19, col = "red")
abline(modelo, col = "green")

NuevosDatos <- data.frame(DAP = c(12, 20, 26, 34, 45))
predicciones <- predict(modelo, newdata = NuevosDatos)
print(data.frame(DAP = NuevosDatos$DAP, Edad_estimada = predicciones))










