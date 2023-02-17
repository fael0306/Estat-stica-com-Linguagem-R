# Criando o vetor
set.seed(1)

library(dplyr)
library(sampling)
library(TeachingSampling)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Conceitos Iniciais de Estatística")

enem2019tratado <- read.csv('enem2019_tratado.csv', sep=",")
View(enem2019tratado)

set.seed(2)
# Numerando a população de Campinas que fizeram o Enem. Foram 13199.
# Criando uma amostragem pegando a cada 100 elementos.
amostra <- S.SY(13199,100)
amostra
dim(amostra)

# Usando amostragem criada em Campinas
enemcampinas <- enem2019tratado %>% filter(NO_MUNICIPIO_RESIDENCIA=="Campinas")

# Relacionando amostragem com o Enem de Campinas
amostracampinas <- enemcampinas[amostra,]