matriz4 <- matrix(c(1,5,15,8),nrow=2,ncol=2,byrow=TRUE)

# Dobrando todos os elementos
produto <- 2*matriz4
produto

# Somando ou subtraindo matrizes
matriz5 <- matrix(c(1,5,15,8),nrow=2,ncol=2,byrow=TRUE)
matriz5
matriz6 <- matrix(c(2,4,6,10),nrow=2,ncol=2,byrow=TRUE)
matriz6

soma = matriz5+matriz6
soma

subtracao = matriz5-matriz6
subtracao

# Multiplicação matricial
produto = matriz5%*%matriz6
produto

# Média das linhas e colunas
mediascolunas <- colMeans(matriz5)
mediascolunas

mediaslinhas <- rowMeans(matriz5)
mediaslinhas

# Soma das linhas e colunas
somacolunas <- colSums(matriz5)
somacolunas

somalinhas <- rowSums(matriz5)
somalinhas

# Matriz com caracteres. Não é necessário especificar o número de linhas e colunas. Um dos parâmetros é o suficiente.
matriz7 = matrix(c("Segunda","Terça","Quarta","Quinta","Sexta", "Sábado"), nrow=3, byrow=TRUE)
matriz7