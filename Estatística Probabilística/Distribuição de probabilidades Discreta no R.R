if(!require(dplyr)) install.packages("dplyr")

library(dplyr)

setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Estatística Probabilística")

enem2019tratado <- read.csv('enem2019_tratado.csv', sep=",")

probab <- function(A,E){
  resultado = A/E
  print(resultado, digits=2)
}

mulheresenem = enem2019tratado %>% filter(TP_SEXO=="F")
p <- probab(nrow(mulheresenem), nrow(enem2019tratado))

# Distribuição binomial
# dbinom = valor pontual, pbinom = faixa de valores

# Probabilidade de retirar 4 mulheres num total de 10 amostras
dbinom(4,10,p)

# Probabilidade de retirar pelo menos uma mulher num total de 10 amostras
# 1 menos a probabilidade de não sair nenhuma = probabilidade de sair PELO MENOS 1
p0 = 1-dbinom(0,10,p)
p0

# Probabilidade de retirar mais do que 1 mulher num total de 10 amostras
# 1 menos a probabilidade de tirar 1 mulher só ou nenhuma
p1 = 1-(dbinom(0,10,p)+dbinom(1,10,p))
p1

# Probabilidade de retirar mais do que 3 mulheres num total de 10 amostras
# 1 menos a probabilidade de sair 0, 1, 2, 3 
p2 = 1-(dbinom(0,10,p)+dbinom(1,10,p)+dbinom(2,10,p)+dbinom(3,10,p))
p2
p3 = 1-pbinom(3,10,p)
p3

# Probabilidade de retirar mais do que 8 mulheres num total de 10 amostras
p4 = dbinom(9,10,p)+dbinom(10,10,p)
p4
p5 = pbinom(10,10,p)-pbinom(8,10,p)
p5

# Distribuição geométrica
# Probabilidade de retirar 3 amostras e nenhuma ser mulher
dgeom(3, p)

# Distribuição de Poisson
# Intervalos (tempo ou espaço, por exemplo)
# Num local de prova, 100 vestibulandos, normalmente, terminaram a prova em 2 horas
# Probabilidade de exatamente 90 vestibulandos terminarem a prova em 2 horas
dpois(90,100) # 90 é a quantidade de ocorrências em estudo, 100 é a taxa de ocorrências