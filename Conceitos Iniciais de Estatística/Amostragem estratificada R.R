library(dplyr)
library(sampling)
library(TeachingSampling)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Conceitos Iniciais de Estatística")

enem2019tratado <- read.csv("enem2019_tratado.csv", sep=",")

# Amostragem em Campinas
enemcampinas <- enem2019tratado %>% filter(NO_MUNICIPIO_RESIDENCIA=="Campinas")

# Amostragem estratificada em Campinas por raça
summary(as.factor(enemcampinas$TP_COR_RACA))

# Verificando proporção
prop.table(table(enemcampinas$TP_COR_RACA))

# Convertendo os números para os significados
enemcampinas$TP_COR_RACA[enemcampinas$TP_COR_RACA==0] <- "Não definido"
enemcampinas$TP_COR_RACA[enemcampinas$TP_COR_RACA==1] <- "Branca"
enemcampinas$TP_COR_RACA[enemcampinas$TP_COR_RACA==2] <- "Preta"
enemcampinas$TP_COR_RACA[enemcampinas$TP_COR_RACA==3] <- "Parda"
enemcampinas$TP_COR_RACA[enemcampinas$TP_COR_RACA==4] <- "Amarela"
enemcampinas$TP_COR_RACA[enemcampinas$TP_COR_RACA==5] <- "Indígena"

# Amostragem estratificada em Campinas por raça novamente
summary(as.factor(enemcampinas$TP_COR_RACA))

# Verificando proporção
prop.table(table(enemcampinas$TP_COR_RACA))

# Utilizando aproximadamente 10% de cada grupo (estrato)
ordemamostras <- strata(data=enemcampinas, stratanames = c("TP_COR_RACA"), size=c(1,2,3,4,5,6), method="srswor")

# Verificando ordens
summary(as.factor(ordemamostras$TP_COR_RACA))
summary(as.factor(enemcampinas$TP_COR_RACA))

# Fazendo estrato com as devidas proporções
amostracampinas3 <- strata(data=enemcampinas, stratanames = c("TP_COR_RACA"), size=c(751, 365, 151, 21, 5, 28), method="srswor")
summary(as.factor(amostracampinas3$TP_COR_RACA))