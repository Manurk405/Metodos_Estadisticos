# Correlacion 
# Importar datos de altura y diametro

erupciones <- faithful
                                  
# Crear un grafico base para revisar el comportamiento 
# de las dos variables numericas 

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duracion de la erupcion (min)",
     pch = 19, col = "grey")

# Conocer el rango del tiempo 
range(erupciones$waiting)

# Conocer el rango de la erupcion 
range(erupciones$eruptions)

boxplot(erupciones$eruptions)
fivenum(erupciones$eruptions)

cor.test(erupciones$eruptions, erupciones$waiting)
