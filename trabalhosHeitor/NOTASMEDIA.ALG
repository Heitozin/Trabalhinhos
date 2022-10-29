Algoritmo "notasMedia"

Var
nome: caracter
disciplina: caracter
contador: inteiro
bimestre: inteiro
media: real
soma: inteiro


Inicio
escreva("Digite o nome do aluno:")
leia(nome)

escreva("Digite a disciplina:")
leia(disciplina)

contador <- 1
repita
escreva("Digite a nota do BIM", contador, ":")
leia(bimestre)
soma <- bimestre + soma
contador <- contador + 1
ate contador >= 5

media <- soma / 4

escreval("Média", media)
Fimalgoritmo