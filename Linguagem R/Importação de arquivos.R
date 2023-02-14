# Abrindo pasta
setwd("C:/Users/f0fp1107/Desktop/Estatística com Linguagem R/Linguagem R")

# Arquivo txt
df1 <- read.table("partks.txt")
df1
View(df1)

# Arquivo csv
df2 <- read.csv("mola.csv")
df2
View(df2)

# É bom testar encodings diferentes
df3 <- read.csv("questoes.csv", encoding="latin-1")
df3 <- read.csv("questoes.csv", encoding="iso-8859-1")
df3 <- read.csv("questoes.csv", encoding="UTF-8")
df3
View(df3)

# Arquivo Excel
install.packages("readxl")
library(readxl)

df4 <- read_xlsx("registro.xlsx")
df4
View(df4)