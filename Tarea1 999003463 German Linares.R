#leer car.csv
library(readr)
Car <- read_csv("~/2020/INVEST/Car.csv")

#Paquete kurtosis
library(psych)

#Paquete Moda
library(modeest)

#Promedio Speed1
mean(Car$speed1)

#Moda Type4
mfv(Car$type4)

#Skew nos da el valor de la asimetria de los datos de la variable x
#Curtosis nos da el achatamiento de la distribucion de los datos de la variable x.

#Desviación Pollution 3 y 5
sd(Car$pollution3)
sd(Car$pollution5)

#Desviación Estándar