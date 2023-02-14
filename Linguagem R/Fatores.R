escolaridade <- c("Fundamental", "Médio", "Superior", "Médio", "Superior", "Fundamental")
escolaridade

escolaridadefator <- as.factor(escolaridade) # Cria níveis com as repetições
escolaridadefator

escolaridade[3]
escolaridadefator[3] 

summary(escolaridade)
summary(escolaridadefator)

table(escolaridade) # Cria um fator e uma tabela com o fator

# Tensão elétricas
tensoes <- c(110, 220, 110, 110, 110, 110, 220)
tensoes
summary(tensoes)

# Criando um fator das tensões
tensaocasasfator = as.factor(tensoes)
tensaocasasfator
summary(tensaocasasfator) # A saída do resumo é diferente em fator. Ele mostra quantas repetições há de cada elemento.