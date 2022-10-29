Algoritmo "mediaNotasVetores"

Var
posicao: inteiro
materia: caracter
nome: caracter
bimestres: vetor[1..4] de inteiro
soma: real
media: inteiro


Inicio
escreva("NOME DO ALUNO:")
leia(nome)

escreva("MATÉRIA:")
leia(materia)

para posicao de 1 ate 4 faca
escreva("NOTAS:")
leia(bimestres[posicao])
fimpara

para posicao de 1 ate 4 faca
media <- bimestres[posicao] + media
fimpara

escreval("Média:", media / 4)




Fimalgoritmo