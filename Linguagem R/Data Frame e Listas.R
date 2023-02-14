mesnumero <- c(1,2,3,4,5,6,7,8,9,10,11,12)
mesnome <- c("Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho",
             "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro")
ano <- c(2023,2023,2023,2023,2023,2023,2023,2023,2023,2023,2023,2023)

tabela <- data.frame(mesnumero,mesnome,ano)
tabela
View(tabela)

# Data Frames pertencentes ao R
df <- mtcars
df
View(df)
summary(df)

df2 <- airquality
df2
View(df2)
summary(df2)

?df
?airquality

# Mostrando os datasets pertencentes ao R
?datasets
library(help = "datasets")

df3 = iris
View(df3)

# Número de linhas e colunas
nrow(df3)
ncol(df3)
dim(df3)

# Resumo estatístico
summary(df3)

# Criando lista
nome <- c("Rafael","Gabriel","Isabella","Guilherme")
idade <- c(23,23,23,16)
curso <- c("Ciência da Computação", "Engenharia Civil", "Psicologia", "NA")
lista <- list(nome,idade,curso)
lista

lista[1]

# Criando lista com nomes
lista2 <- list(nome=c("Rafael","Gabriel","Isabella","Guilherme"),
               idade=c(23,23,23,16), 
               curso=c("Ciência da Computação", "Engenharia Civil", "Psicologia", "NA"))
lista2
lista2[3]