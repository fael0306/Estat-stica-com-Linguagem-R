if(!require(dplyr)) install.packages("dplyr")

library(dplyr)

# Selecionando pasta base do programa
setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Preparação, organização e estruturação dos dados")

enem2019 <- read.csv('enem_sp_2019.csv')
View(enem2019)

# Excluindo uma coluna
enem2019$NU_ANO <- NULL

# Excluindo várias colunas
excluir <- c("TP_ESTADO_CIVIL", "SG_UF_RESIDENCIA")
View(excluir)
# Recebendo todas as colunas, exceto as que estão na lista "excluir". 
# Dessa forma, apaga as colunas não recebidas 
enem2019 <- enem2019[, !(names(enem2019) %in% excluir)]

# Renomear uma coluna
enem2019 <- rename(enem2019, NOTA_COMP1 = NU_NOTA_COMP1)
# Renomear várias colunas
enem2019 <- rename(enem2019, 
                   NOTA_COMP2 = NU_NOTA_COMP2, 
                   NOTA_COMP3 = NU_NOTA_COMP3, 
                   NOTA_COMP4 = NU_NOTA_COMP4, 
                   NOTA_COMP5 = NU_NOTA_COMP5, 
                   NOTA_REDACAO = NU_NOTA_REDACAO)

# Verificando como o R reconheceu as variáveis
str(enem2019)

# Fazendo o código virar fator
enem2019$CO_ESCOLA <- as.factor(enem2019$CO_ESCOLA)

# Verificando quantidade de valores ausentes
sapply(enem2019, function(x) sum(is.na(x)))
# Verificando quantidade de valores indefinidos
sapply(enem2019, function(x) sum(is.nan(x)))

# Separando os treineiros
treineiros <- enem2019 %>% filter(IN_TREINEIRO==1)
# Pegando só os vestibulandos
vestibulandos <- enem2019 %>% filter(IN_TREINEIRO==0)
# Excluindo a coluna
vestibulandos$IN_TREINEIRO <- NULL

# Exportando os treineiros
write.table(treineiros, file = "treineiros.csv", sep=",")

# Separando vestibulando presentes, ou seja, compareceu a todas as provas
vestibulandospresentes <- vestibulandos %>% filter(vestibulandos$TP_PRESENCA_CH==1
                                                   & vestibulandos$TP_PRESENCA_CN==1
                                                   & vestibulandos$TP_PRESENCA_LC==1
                                                   & vestibulandos$TP_PRESENCA_MT==1)

if(!require(tidyverse)) install.packages("tidyverse")

library(tidyverse)

# Verificando valores ausentes
sapply(vestibulandospresentes, function(x) sum(is.na(x)))

# Apagando valores ausentes, caso fosse necessário
vestibulandospresentes <- drop_na(vestibulandospresentes)
# Verificando novamente
sapply(vestibulandospresentes, function(x) sum(is.na(x)))

# Verificando notas zeradas
notazero <- vestibulandospresentes %>% filter(NOTA_COMP1==0) # 2983
notazero <- vestibulandospresentes %>% filter(NOTA_COMP2==0) # 2981
notazero <- vestibulandospresentes %>% filter(NOTA_COMP3==0) # 2985
notazero <- vestibulandospresentes %>% filter(NOTA_COMP4==0) # 2984
notazero <- vestibulandospresentes %>% filter(NOTA_COMP5==0) # 24023
notazero <- vestibulandospresentes %>% filter(NOTA_REDACAO==0) # 2981 

notazero <- vestibulandospresentes %>% filter(NU_NOTA_CH==0) # 134
notazero <- vestibulandospresentes %>% filter(NU_NOTA_CN==0) # 13
notazero <- vestibulandospresentes %>% filter(NU_NOTA_LC==0) # 54
notazero <- vestibulandospresentes %>% filter(NU_NOTA_MT==0) # 17

redacoessemproblemas <- vestibulandospresentes %>% filter(TP_STATUS_REDACAO==1) # 168305

write.table(vestibulandospresentes, file="enem2019tratado.csv", sep = ",")