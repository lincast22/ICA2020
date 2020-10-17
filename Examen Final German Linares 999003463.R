#German Rolando Linares Castillo 999003463
#Seccion A
#Intervalo de Confianza
media <- 173.47
n <-15
desv <- 4
alfa <- 0.05/2
nivelconfianza<- 1-alfa

#Normal
normal<- qnorm(nivelconfianza,0,1)
normal

#Error
error<-  desv/sqrt(n)
error
margen <- normal*error
margen

#Limites
limInf<- media - margen
limsup <- media +margen
limInf
limsup

media <- 173.47
n <-15
desv <- 4
alfa <- 0.20/2
nivelconfianza<- 1-alfa

#Normal
normal<- qnorm(nivelconfianza,0,1)
normal

#Error
error<-  desv/sqrt(n)
error
margen <- normal*error
margen

#Limites
limInf<- media - margen
limsup <- media +margen
limInf
limsup

#Hipotesis para la media
#Datos
alfa <-0.01
n <- 50
media <- 750
s <- 120
mu <- 800

#Estadistico de prueba
z<- (media-mu)/(s/sqrt(n))
z

#Valor de distribuciÃ³n
zalfa<- qnorm(alfa,0,1, lower.tail = TRUE)
zalfa

#ConclusiÃ³n
z < zalfa

#Hipotesis para varianza
#Datos
n<- 24
gl<- n-1
s2<- 4.9
var<-4
alfa<-0.05
x2sup <- 1-(alfa/2)
x2inf <- (alfa/2)

#Estadistico de prueba
x2 <- ((n-1)*s2)/var
x2
#Valor de distribuciÃ³n
chi_sd<- qchisq(1-alfa, n-1)
chi_sd

#ConclusiÃ³n
x2 > chi_sd

#Regresión
#Rergresion Volume (x) y Height(y)
lm.trees=lm(trees$Height ~trees$Volume, data=trees)
plot (lm.trees)
abline (lm.trees)
summary(lm.trees)

#Rergresion Volume (x) y Girth(y)
lm.trees1=lm(trees$Girth ~trees$Volume, data=trees)
plot (trees$Girth ~trees$Volume)
abline (lm.trees1)
summary(lm.trees1)
