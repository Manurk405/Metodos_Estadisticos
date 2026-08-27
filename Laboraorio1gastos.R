# Gastos Totales
300+240+1527+400+1500+1833
celular <- 300
celular
comida <- 1000
renta <- 3000
transporte <- 400
otrosgastos <- 500
gimnacio <- 400

# Gastos por mes 

GastoMensual <- (300+500+3000+400+300+400)
GastoMensual

# Gasto por semestre (5 meses)

GastoSemestre <- GastoMensual*5
GastoSemestre
 
# Gasto anual (10 meses)

GastoAnual <- GastoMensual*10
GastoAnual

gastos <- c(celular, comida, renta, transporte, subscripciones, gimnacio, otrosgastos)
Categorias <- c("celular","comida", "renta", "transporte", "subscripciones", "gimnacio", "otrosgastos")
barplot(gastos, names.arg = Categorias)


