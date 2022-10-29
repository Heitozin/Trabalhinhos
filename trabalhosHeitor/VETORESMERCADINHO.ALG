Algoritmo "vetoresMercadinho"

Var
posicao:inteiro
nome: vetor[1..3] de caracter
preco: vetor[1..3] de real
total_compra: real

Inicio
para posicao de 1 ate 3 faca
escreva("NOME PRODUTO:")
leia(nome[posicao])
escreva("PREÇO:")
leia(preco[posicao])
fimpara

para posicao de 1 ate 3 faca
total_compra <- preco[posicao] + total_compra
fimpara

para posicao de 1 ate 3 faca
escreval("PRODUTOS SELECIONADOS: ", nome[posicao], preco[posicao])
fimpara


escreval("TOTAL:", total_compra)

Fimalgoritmo