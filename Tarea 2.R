#German Rolando Linares Castillo 999003463
#Juan Carlos Sánchez Portillo 999003468
#Sección A
#Ejercicio 1
#Gráfica
dbinom(0:16, 16, 0.4)
dbinomial <- dbinom(0:16, 16, 0.4)
barplot(dbinomial, main = "Probabilidad de supervivencia de pacientes", xlab = "Pacientes que sobreviven", ylab = "Frecuencia", col = c("royalblue"), names.arg = 0:16)
#Probabilidad de que sobrevivan todos los pacientes 
dbinom(16, 16, 0.4)
#Probabilidad de que sobrevivan mas de la mitad de los pacientes
pbinom(8, 16, 0.4, lower.tail = FALSE, log.p = FALSE)

#Ejercicio 2
#Gráfica
x = seq(0.14, 0.36, by = .01)
dnorm(x, 0.25, 0.11)
valores <- dnorm(x, 0.25, 0.11)
plot(x, valores, type="l", main="Concentración de plomo", xlab="Valores X", ylab="Valores de densidad", col = c("red"))
#Probabilidad de mayor de 0.6ppm
pnorm(0.60,0.25,.11, lower.tail = FALSE)
#Probabilidad de menor a 0.15 ppm
pnorm(0.15,0.25,.11, lower.tail = TRUE)
#Ppm minima en el 30% con  mayor concentración (es decir el valor maximo del 70% con menos)
qnorm(0.7,0.25,0.11, lower.tail = TRUE)

#Ejercicio 2
#Gráfica
dpois(0:5, 5)
barplot(dpois(0:15, 5), main = "Probabilidad de fotografías por día", xlab = "Fotografías", ylab = "Probabilidad", col = c("green"), names.arg = 0:15)
#Que no se produzcan mas de 4(menor o igual a 4)
ppois(4, 5)
#Que se produzcan almenos 4(mayor o igual a 4) o mayor a 3
ppois(3, 5, lower.tail = FALSE)
#Que se produzcan menos de 4(menor o igual a 3)
ppois(3, 5)