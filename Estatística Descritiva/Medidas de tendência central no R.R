if(!require(dplyr)) install.packages("dplyr")

library(dplyr)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Estatística Descritiva")

enem2019tratado <- read.csv('enem2019_tratado.csv', sep=",")

# Média
mean(enem2019tratado$NOTA_MT)

# Mediana
median(enem2019tratado$NOTA_MT)

# Moda
# Não existe função pronta para a moda
# Criando função
moda <- function(v){
  valorunico <- unique(v)
  # tabulate contabiliza os valores e busca o que mais aparece
  valorunico[which.max(tabulate(match(v, valorunico)))]
}

resultado <- moda(enem2019tratado$NOTA_MT)
resultado

resultado <- moda(enem2019tratado$NOTA_REDACAO)
resultado

# Verificando simetria
hist(enem2019tratado$NOTA_MT, probability = T, col="blue")
# Criando linha de densidade no gráfico
lines(density(enem2019tratado$NOTA_MT), col="red")

# Verificando simetria
hist(enem2019tratado$NOTA_REDACAO, probability = T, col="blue")
# Criando linha de densidade no gráfico
lines(density(enem2019tratado$NOTA_REDACAO), col="red")

mean(enem2019tratado$NOTA_REDACAO)
median(enem2019tratado$NOTA_REDACAO)
resultado <- moda(enem2019tratado$NOTA_REDACAO)
print(resultado)