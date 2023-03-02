# Testes de normalidade
# Verificar se a distribuição é normal

# TESTES
# Shapiro-Wilk (limite de 5000 amostras)
# Anderson-Darling
# Kolmogorov-Smirnov
# Cramer-Von Mises
# Histrograma
# QQplot

# NÍVEL DE SIGNIFICÂNCIA DE 0,05 OU 5% (MAIS UTILIZADO)
# Quando p > 0,05 é uma distribuição normal

if(!require(dplyr)) install.packages("dplyr")
if(!require(nortest)) install.packages("nortest")
library(dplyr)
library(nortest)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Estatística Probabilística")

# Abrir arquivo
enem2019tratado <- read.csv('enem2019_tratado.csv', sep=",")

# Ciências Naturais

# Histrograma
hist(enem2019tratado$NOTA_CN, probability = T, col="blue")
lines(density(enem2019tratado$NOTA_CN))

# QQplot
qqnorm(enem2019tratado$NOTA_CN)
qqline(enem2019tratado$NOTA_CN)

# Shapiro-Wilk
shapiro.test(enem2019tratado$NOTA_CN)

# Anderson-Darling
ad.test(enem2019tratado$NOTA_CN) # Não é normal

# Kolmogorov-Smirnov
ks.test(enem2019tratado$NOTA_CN, pnorm)
lillie.test(enem2019tratado$NOTA_CN)

# Cramer-Von Mises
cvm.test(enem2019tratado$NOTA_CN)

# Análise na cidade de Franca
enemfranca <- enem2019tratado %>% filter(NO_MUNICIPIO_RESIDENCIA=="Franca")

# Ciências Naturais
# Histograma
hist(enemfranca$NOTA_CN, probability=T, col="blue")
lines(density(enemfranca$NOTA_CN), col="red")

# QQplot (gráfico de distribuição normal)
qqnorm(enemfranca$NOTA_CN)
qqline(enemfranca$NOTA_CN)

# Shapiro-Wilk
shapiro.test(enemfranca$NOTA_CN)

# Anderson-Darling
ad.test(enemfranca$NOTA_CN)

# Kolmogorov-Smirnov
lillie.test(enemfranca$NOTA_CN)

# Cramer-Von Mises
cvm.test(enemfranca$NOTA_CN)