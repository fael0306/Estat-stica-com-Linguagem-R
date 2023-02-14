# Verificando documentação
?matrix
?factor

# Criando matriz com 3 linhas e 2 colunas. 
# byrow faz com que ele preencha por linha
matriz <- matrix(c(1,5,10,15,28,90),nrow=3,ncol=2,byrow=TRUE)
matriz

# Sem byrow ele preenche por colunas
matriz2 <- matrix(c(1,5,10,15,28,90),nrow=3,ncol=2,byrow=FALSE)
matriz2

# Acessando elemento
matriz[2,2]

# Criando matriz a partir de vetores. 
# Obviamente os vetores precisam ter o mesmo número de elementos
vetorA <- c(2,5,8)
vetorB <- c(5,5,5)
matriz2 <- rbind(vetorA, vetorB)
matriz2

matriz2[1,2]

# Criando matriz com números de 2 a 9 e com 2 colunas. 
# Ele preenche por coluna, pois o byrow está desativado por padrão.
matriz3 = matrix(2:9, ncol=2)
matriz3

# Número de linhas e colunas
dim(matriz3)
# Número de linhas
nrow(matriz3)
# Número de colunas
ncol(matriz3)

# Nomeando linhas e colunas
dimnames(matriz3) <- list(c("L1", "L2", "L3", "L4"),c("C1", "C2"))
matriz3

# Criando uma matriz já com nomes em linhas e colunas
matriz4 = matrix(2:13, nrow=4, byrow=FALSE, dimnames=list(c("L1","L2","L3","L4"),c("C1","C2","C3")))
matriz4