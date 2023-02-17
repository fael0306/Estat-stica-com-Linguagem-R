# Na estratificada, pegamos amostras de grupos criados
# No agrupamento, utilizamos todos os elementos dos grupos selecionados

# Estudo de todos os elementos de apenas um grupo

library(dplyr)
library(sampling)
library(TeachingSampling)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Conceitos Iniciais de Estatística")

enem2019tratado <- read.csv('enem2019_tratado.csv', sep=",")

View(enem2019tratado)

# Filtrando por Campinas
enemcampinas <- enem2019tratado %>% filter(NO_MUNICIPIO_RESIDENCIA=="Campinas")
escolaspublicas <- enemcampinas %>% filter(TP_ESCOLA==2)

# Para usar a mesma amostragem sempre que rodar
set.seed(3)

# Campinas possui 187 escolas públicas
# Buscar apenas um grupo para utilizar os elementos. Foi utilizado 19 escolas 
# para pegar 10% do total.
amostracampinas <- cluster(escolaspublicas, clustername=c("CO_ESCOLA"), size=19, method="srswor")
summary(as.factor(amostracampinas$CO_ESCOLA))

# Verificando resultado a partir de escolas que estão na amostra
teste <- enemcampinas %>% filter(CO_ESCOLA==35018351)
teste

teste2 <- enemcampinas %>% filter(CO_ESCOLA==35039901)
teste2