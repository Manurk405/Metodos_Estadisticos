# ==============================================================
# Evaluación III - Principios de estadística
# Anillos de crecimiento y temperatura
#
# Nombre: Angel Mauel Escobedo Arredondo 
# Matrícula:1970881
# ==============================================================


# ==============================================================
# EJERCICIO 1
# ==============================================================

# --- a) Ingresar los datos en el objeto "anillos" ---------------
#        Variables: Temperatura (AFres, ACal) y Ancho (mm)

AFres <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal <- c(2.51, 1.90, 3.20, 2.55, 1.92, 2.84, 3.41, 2.12, 2.70, 2.66)

# --- b) Hipótesis de partida ------------------------------------
# H0: El ancho medio de los anillos es igual en el año fresco y en el año calido 
# H1: El ancho medio de los anillos es diferente entre ambos años


# --- c) Media de AFres y ACal -----------------------------------
mean(AFres)
mean(ACal)
# mean(AFres)= 2.586
# mean(ACal)= 2.581

# --- d) Desviación estándar de AFres y ACal ---------------------
sd(AFres)
sd(ACal)
# sd(AFres)= 0.4808834
# sd(ACal)= 0.503001

# --- e) Diferencia media entre ambos años -----------------------
# 2.586 - 2.581 = 0.005


# --- f) Valor de t ----------------------------------------------

t.test(AFres, ACal, paired = TRUE)

# --- g) ¿Diferencias significativas? / Parámetro / Valor --------

# La diferencia media es: 2.586 - 2.581 = 0.005 mm
# El valor de t lo obtienes del output de la prueba t (t = 0.1706)
# Parámetro para la decisión: valor-p (p-value). El valor es p = 0.8683.

# --- h) Conclusión sobre la decisión del responsable ------------
# Respuesta:

# El valor p es de 0.8683 por lo que estadisticamente no podemos decir que
# el año calido redujo el creimiento de los anillos, el valor "t" es cercano a
# cero lo que nos dice que no hay una difrencia grande entre el ancho medio de
# los anillos.
# La decision del responsable esta equivocada ya que existe evidencia estadistica
# que demeustra que no es un sitio vunerable.

# ==============================================================
# EJERCICIO 2
# ==============================================================

# --- Ingresar los datos -----------------------------------------
AFres2 <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal2 <- c(2.10, 1.82, 2.64, 2.48, 1.70, 2.41, 2.95, 2.15, 2.30, 2.35)


# --- Hipótesis --------------------------------------------------
# H0: El ancho medio de los anillos en ambos años son iguales 
# H1: El anocho medio de los anillos es diferente entre ambos años 


# --- a) Media de AFres y ACal -----------------------------------
mean(AFres2)
mean(ACal2)
# mean(AFres2)= 2.586
# mean(ACal2)= 2.29

# --- b) Desviación estándar de AFres y ACal ---------------------

sd(AFres2)
sd(ACal2)
# sd(AFres2)= 0.4808834
# sd(ACal2)= 0.370735

# --- c) Diferencia media entre ambos años -----------------------

#mean difference 0.296 


# --- d) Valor de t ----------------------------------------------

t.test(AFres2, ACal2, paired = TRUE)

# --- e) ¿Diferencias significativas? / Parámetro / Valor --------

# La diferencia media es: 2.586 - 2.290 = 0.296 mm
# Valor de t: Se obtiene del output de R (t = 5.8804)
# Parámetro para la decisión: valor-p. El valor es p = 0.0002347.

# --- f) Decisión de la Comisión Forestal ------------------------
# Respuesta:
# En el nuevo sitio de menor altitud se demostro estadisticamente que 
# existe una disminucion en el crecimento de los anillos ya que tenemos 
# un valor p menor a 0.05, el valor t nos dice que hay una difrencia entre 
# las medias ya que en el año calido diminuyo el ancho.
# Por lo tanto podemos decir que el sitio de menor altitud puede ser vunerable
# para el desarollo de los pinos.
