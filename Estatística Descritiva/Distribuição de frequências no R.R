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

# Montando tabela de frequências absolutas
freqabs = table(enemsorocaba$NU_IDADE)
View(freqabs)

# Montando tabela de frequências relativas
freqrel <- prop.table(freqabs)
View(freqrel)
# Frequência percentual relativa
freqprel <- 100*prop.table(freqrel)
View(freqrel)

# Criando nova linha com o total
freqabs <- c(freqabs, sum(freqabs))
View(freqabs)
# Nomeando a linha
names(freqabs)[54] <- " Total"

# Fazendo o mesmo com a frequência relativa. Precisa dar 100.
freqrel <- c(freqrel, sum(freqrel))
freqprel <- c(freqprel, sum(freqprel))

# cbind une as colunas de tabelas diferentes
tabelatotal <- cbind(freqabs, freqrel = round(freqrel, digits = 2), freqprel=round(freqprel, digits = 2))
View(tabelatotal)

# Construindo as classes de frequências
# A função cut corta os pedaços da tabela para formar as classes
# O break indica como será cortada a tabela
# O right indica que o número da direita não entra no conjunto
intervaloclasses <- seq(10,75,5)
View(intervaloclasses)
tabelaclasses <- table(cut(enemsorocaba$NU_IDADE, breaks=intervaloclasses, right=FALSE))
View(tabelaclasses)