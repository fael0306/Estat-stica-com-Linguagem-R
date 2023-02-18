if(!require(dplyr)) install.packages("dplyr")

library(dplyr)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Estatística Descritiva")

enem2019tratado <- read.csv('enem2019_tratado.csv', sep=",")

# Variância
variancia <- var(enem2019tratado$NOTA_MT)
variancia

# Desvio padrão
desvio <- sd(enem2019tratado$NOTA_MT)
desvio

# Quartis
quantile(enem2019tratado$NOTA_MT)
IQR(enem2019tratado$NOTA_MT)
# A função pode não ser usada para encontrar quartis
quantile(enem2019tratado$NOTA_MT, probs = c(0.05, 0.95))
# Pulando de 20% em 20%
quantile(enem2019tratado$NOTA_MT, seq(from=0, to=1, by=0.2))
# Calculando amplitude (diferença entre máximo e mínimo)
diff(range(enem2019tratado$NOTA_MT))

# Todas as principais medidas juntas
summary(enem2019tratado$NOTA_MT)
# Para mais de uma variável
summary(enem2019tratado[c('NOTA_MT', 'NOTA_CN', 'NOTA_LC', 'NOTA_CH', 'NOTA_REDACAO')])


# Comparando amostra com a população
amostra <- sample(c(0,1), 499951, replace=TRUE, prob=c(0.8,0.2))
summary(as.factor(amostra))
prop.table(table(amostra))

amostrateste <- enem2019tratado[amostra==1,]
dim(amostrateste)

# Médias
mean(enem2019tratado$NOTA_MT)
mean(amostrateste$NOTA_MT)

# Medianas
median(enem2019tratado$NOTA_MT)
median(amostrateste$NOTA_MT)

# Moda
moda <- function(v){
  valorunico <- unique(v)
  # tabulate contabiliza os valores e busca o que mais aparece
  valorunico[which.max(tabulate(match(v, valorunico)))]
}

moda(enem2019tratado$NOTA_MT)
moda(amostrateste$NOTA_MT)

# Geral
summary(enem2019tratado$NOTA_MT)
summary(amostrateste$NOTA_MT)

# Valores muito próximos