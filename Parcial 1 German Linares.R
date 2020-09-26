#Tendencia central wind
mean(airquality$Wind)
median(airquality$Wind)
mfv(airquality$Wind)

#Grado de simetría
skew(airquality$Solar.R)

#Desviación más adecuada
sd(airquality$Ozone, na.rm = TRUE)
sd(airquality$Wind)

#Histograma de Ozono
hist(x = airquality$Ozone, main = "Histograma de Ozono", 
     xlab = "Ozono", ylab = "Frecuencia",
     col = "red")

#Tendencia central temp
mean(airquality$Temp)
median(airquality$Temp)
mfv(airquality$Temp)

#Histograma de Carat
ggplot(diamonds) + 
  geom_histogram(binwidth = 0.1, aes(x = carat), fill = 'green') + 
  xlab("Carat") + 
  ylab("Frecuencia") + 
  ggtitle("Histograma de la variable carat") + theme_test()

#Cajas de carat y price
ggplot(data = diamonds, aes(x = carat, y = price)) + 
  geom_boxplot(aes(color = carat), alpha = 0.7) + 
  xlab('Carat') + 
  ylab('Price') +
  ggtitle("Carat y price") + 
  theme_dark()

#Dispersión carat y price
ggplot(data = diamonds, aes(x = carat, y = price)) + 
  geom_point(color = 'blue', size = 1, alpha = 1) +
  geom_smooth(color = 'green') + 
  xlab('Carat') + 
  ylab('price') +
  ggtitle('Relación entre carat y price') + 
  theme_update()

#Barras de Color
ggplot(data = diamonds, aes(x = color, fill = as.factor(color))) + 
  geom_bar() + 
  xlab("Color") + 
  ylab("Frecuencia") + 
  ggtitle("Gráfico de Barras de Color") +
  labs(fill = "Color") + 
  theme_update()

#Dispersión Y y Z
ggplot(data = diamonds, aes(x = y, y = z)) + 
  geom_point(color = 'green', size = 1, alpha = 1) +
  geom_smooth(color = 'red') + 
  xlab('Y') + 
  ylab('Z') +
  ggtitle('Relación entre carat y price') + 
  theme_update()

#Probabilidad de 20 quejas en un día
dpois(0:48, 20)
barplot(dpois(0:48, 20), main = "Probabilidad de quejas por día", xlab = "Quejas", ylab = "Probabilidad", col = c("green"), names.arg = 0:48)

#20 elementos con probabilidad de 0.6
dbinom(0:20, 20, 0.6)
dbinomial <- dbinom(0:20, 20, 0.6)
barplot(dbinomial, main = "Probabilidad de exito", xlab = "Número de exitos", ylab = "Frecuencia", col = c("royalblue"), names.arg = 0:20)
