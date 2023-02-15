if(!require(dplyr)) install.packages("dplyr")

library(dplyr)

# Selecionando pasta base do programa
setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Preparação, organização e estruturação dos dados")

enem_sp_2019 <- read.csv("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Preparação, organização e estruturação dos dados/enem_sp_2019.csv", sep=",")

View(enem_sp_2019)
