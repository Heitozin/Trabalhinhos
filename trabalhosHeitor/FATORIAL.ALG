Algoritmo "Fatorial"

var
numero: inteiro
Cont: inteiro
Fatorial: inteiro


inicio
repita

escreval("Informe um número inteiro de 1 à 10:")
leia (numero)

ate (numero >= 0)
Cont <- 1
Fatorial <- 1

repita
Fatorial <- Fatorial * Cont
Cont <- Cont + 1
ate(cont > numero)

escreva ("O fatorial de", numero)
escreval(" é igual a", Fatorial)

fimalgoritmo