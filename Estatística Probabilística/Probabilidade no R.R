if(!require(dplyr)) install.packages("dplyr")

library(dplyr)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Estatística Probabilística")

enem2019tratado <- read.csv('enem2019_tratado.csv', sep=',')

enemguarulhos <- enem2019tratado %>% filter(NO_MUNICIPIO_RESIDENCIA=="Guarulhos")
nrow(enemguarulhos) # Número de vestibulandos de Guarulhos
enemcampinas <- enem2019tratado %>% filter(NO_MUNICIPIO_RESIDENCIA=="Campinas")
nrow(enemcampinas) # Número de vestibulandos de Campinas

# Criando a função de probabilidade
probabilidade <- function(A, E){
  resultado = (A/E)*100
  print(resultado, digits=3)
}

# Probabilidade de escolher um vestibulando de Guarulhos aleatoriamente
probabilidade(nrow(enemguarulhos),nrow(enem2019tratado))
# Probabilidade de escolher um vestibulando de Campinas aleatoriamente
probabilidade(nrow(enemcampinas),nrow(enem2019tratado))

probabilidadenegativa <- function(A, E){
  resultado = (1-(A/E))*100
  print(resultado, digits=3)
}

# Probabilidade de escolher um vestibulando que não seja nem de Guarulhos nem de Campinas
probabilidadenegativa((nrow(enemcampinas)+nrow(enemguarulhos)), nrow(enem2019tratado))

# Criando função para probabilidade da União (U)
probabilidadeuniao <- function(A, B, E){
  resultado = (A/E + B/E)*100
  print(resultado, digits=3)
}

# Usando a função criada
probabilidadeuniao(nrow(enemcampinas), nrow(enemguarulhos), nrow(enem2019tratado))

# Criando função para a probabilidade da Interseção
probabilidadeintersecao <- function(A, B, E){
  resultado = (A/E*B/E)*100
  print(resultado, digits=3)
}

probabilidadeintersecao(nrow(enemcampinas), nrow(enemguarulhos), nrow(enem2019tratado))

# Criando função para a probabilidade condicional. AB = interceção de A e B
probabilidadecondicional <- function(AB, B){
  resultado = (AB/B)*100
  print(resultado, digits=3)
}

# Probabilidade de tirar uma mulher parda
mulher <- enem2019tratado %>% filter(TP_SEXO=="F")
mulherparda <- mulher %>% filter(TP_COR_RACA==3)
probabilidadecondicional(nrow(mulherparda), nrow(mulher))

