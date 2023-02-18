if(!require(dplyr)) install.packages("dplyr")
if(!require(sampling)) install.packages("sampling")
if(!require(TeachingSampling)) install.packages("TeachingSampling")

library(dplyr)
library(sampling)
library(TeachingSampling)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Estatística Descritiva")
# Mostra a pasta atual
getwd()

enem2019tratado <- read.csv('enem2019_tratado.csv', sep=",")

enemsorocaba <- enem2019tratado %>% filter(NO_MUNICIPIO_RESIDENCIA=="Sorocaba")

# Histograma
hist(enemsorocaba$NU_IDADE, col="red")

# Recriando tabela de classes
intervaloclasses <- seq(10,75,5)
View(intervaloclasses)
tabelaclasses <- table(cut(enemsorocaba$NU_IDADE, breaks=intervaloclasses, right=FALSE))
View(tabelaclasses)

# Polígono de frequência
plot(tabelaclasses, type = 'o')

# Gráfico de Ogiva
# Frequência acumulada
freqrelclasse <- prop.table(table(cut(enemsorocaba$NU_IDADE, breaks = c(intervaloclasses))))
# seq_along faz o intervalo ser usado na tabela de classes
freqacum <- cumsum(tabelaclasses)[seq_along(intervaloclasses)]

# Gráfico
plot(intervaloclasses, freqacum, type='o')