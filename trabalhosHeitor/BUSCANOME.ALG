Algoritmo "buscaNome"

Var
nomes: vetor[1..3] de caracter
buscaNome: caracter
posicao: inteiro

Inicio
nomes[1] <- "Fulano"
nomes[2] <- "Fulana"
nomes[3] <- "Furlano"

escreva("Digite o nome que deseja buscar:")
leia(buscaNome)

para posicao de 1 ate 3 faca
se buscaNome = nomes[posicao] entao
escreval("Nome: ", nomes[posicao])
fimse
fimpara

Fimalgoritmo