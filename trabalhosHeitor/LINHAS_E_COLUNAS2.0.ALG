Algoritmo "linhas_e_colunas2.0"

Var
linha: inteiro
coluna: inteiro
notas: vetor[1..2,1..5] de real

Inicio
para linha de 1 ate 2 faca
para coluna de 1 ate 5 faca
se (coluna > 0) e (coluna <= 4) entao
escreva("Digite a nota do BIM: ")
leia(notas[linha,coluna])
senao
notas[linha,coluna] <- (notas[linha,1] + notas[linha,2] + notas[linha,3] + notas[linha,4]) / 4
fimse
fimpara
fimpara
escreval("Médias ", notas[linha,coluna])
Fimalgoritmo