# Correlacion de continuacion

# Ingresar pares de dato 

x2 <- c(10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y2 <- c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)

mean(x2)
mean(y2)

#  Grafica de datos 
par(mfrow=c(2,2))
plot(x2, y2, col="blue",
     main="Conjunto 2", pch=19)
plot(x2, y2, col="red",
     main="Conjunto 2", pch=19)
plot(x2, y2, col="orange",
     main="Conjunto 2", pch=19)
plot(x2, y2, col="yellow",
     main="Conjunto 2", pch=19)
