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

# Devolver la ventana de gráficos a la normalidad (1 solo gráfico)
par(mfrow = c(1, 1))