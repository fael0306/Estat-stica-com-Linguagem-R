x <- 10
if(x<10){
  print("x é menor do que 10")
} else{
  print("x é maior que 10")
}

y <- 21
if(y<20){
  print("y é menor que 20")
} else if (y==20){
  print("y é igual a 20")
} else{
  print("y é maior que 20")
}

# Existe a função ifelse. Diminui a sintaxe da estrutura condicional.
w <- 13
ifelse(w%%2 == 0, "par", "ímpar")

nota <- 4.5
if(nota>=7){
  print("Aprovado")
} else if(nota>=4 && nota<7){
  print("Prova Final")  
} else{
  print("Reprovado")
}