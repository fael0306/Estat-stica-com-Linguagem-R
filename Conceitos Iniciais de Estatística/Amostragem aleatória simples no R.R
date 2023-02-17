if(!require(dplyr)) install.packages("dplyr")
if(!require(sampling)) install.packages("sampling")
if(!require(TeachingSampling)) install.packages("TeachingSampling")

library(dplyr)
library(sampling)
library(TeachingSampling)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Conceitos Iniciais de Estatística")

enem2019tratado <- read.csv('enem2019_tratado.csv', sep=",")

View(enem2019tratado)

# Criando amostragem aleatória simples na cidade de Campinas

# Filtrando a cidade de Campinas
enemcampinas <- enem2019tratado %>% filter(NO_MUNICIPIO_RESIDENCIA=="Campinas")
# Não alterar amostra após rodar o programa novamente
set.seed(1) 
# Dos 13199 registros, estamos pegando 80% de amostragem com 0 e 20% com 1
amostra <- sample(c(0,1),13199,replace=TRUE,prob=c(0.8,0.2))
# Verificando amostra
summary(as.factor(amostra))
prop.table(table(amostra))

# Usando o comando da amostra para buscar a amostra de Campinas
amostracampinas <- enemcampinas[amostra==1,]
dim(amostracampinas)