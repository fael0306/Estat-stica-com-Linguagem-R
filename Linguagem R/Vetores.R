vetor <- c(1,2,3,4,5,6,7)
class(vetor)

dias <- c("Segunda","Terça","Quarta","Quinta","Sexta")
class(dias)

juntando <- c(vetor,dias)
class(juntando)

gastosdias <- c(100,200,300,400,500,600)
class(gastosdias)
length(gastosdias)

ordenando <- sort(gastosdias)
total <- sum(gastosdias)
minimo <- min(gastosdias)
maximo <- max(gastosdias)
media <- mean(gastosdias)

limite <- (gastosdias <= 300) # Faz o teste para cada elemento da lista
limite

intervalo <- (3:8)
passo <- seq(2,42,by=5) # De 2 a 42 indo de 5 em 5
passo

repeticao <- rep(2,8) # Cria um vetor repetindo o primeiro número de acordo com o segundo
repeticao

repeticaomultipla <- rep(c(3,5),c(4,6)) # Cria um vetor com quatro números 3 e seis números 5
repeticaomultipla

repeticaoprogramada <- rep(3:5, each = 3) # Cria um vetor com 3 repetições de cada número do 3 ao 5
repeticaoprogramada

repeticaoprogramada2 <- rep(3:6, 3)
repeticaoprogramada2

vetor <- c(2,4,6,8,10,12)
vetor2 <- c(vetor,14) # Adicionando um número a um vetor
vetor2
vetor3 = as.integer(vetor2)
vetor3

vetor4 <- c(vetor3, "pares") # Adicionando um caracter no vetor com números
vetor4

posicao <- vetor4[2]
posicao

vetornovo <- vetor4[-2] # Apagando elemento de vetor
vetornovo