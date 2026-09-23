anillos <- read.csv("Anillos_Parcial1 (2).csv")
head(anillos)
summary(anillos$AnchoAnillo_mm)

hist(anillos$AnchoAnillo_mm,
     col="forestgreen", border="white",
     xlab="Ancho de anillo (mm)")

sd(anillos$AnchoAnillo_mm)
var(anillos$AnchoAnillo_mm)
range(anillos$AnchoAnillo_mm)
cv <- (sd(anillos$AnchoAnillo_mm)/mean(anillos$AnchoAnillo_mm))*100
cv

