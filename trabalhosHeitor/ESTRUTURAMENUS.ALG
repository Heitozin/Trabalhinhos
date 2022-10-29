Algoritmo "estruturaMenus"

Var
menu: inteiro
nome: caracter
contador: inteiro
bimestre: inteiro
media: real
soma: inteiro

Inicio
repita
escreval("Menu:")
escreval("1 - Cadastro de aluno")
escreval("2 - Cálculo de média")
escreval("3 - Sair")
escreval("Digite a opção desejada:")
leia(menu)

escolha menu
caso 1
escreval("Cadastro de aluno")
escreval("Digite o nome do aluno:")
leia(nome)

caso 2
escreval("Cálculo de média")
contador <- 1
repita
escreva("Digite a nota do BIM", contador,":")
leia(bimestre)
soma <- bimestre + soma
contador <- contador + 1
ate contador >= 5

media <- soma / 4

escreval("Média", media)


caso 3
escreval("Tchau")
fimescolha
ate menu = 3



Fimalgoritmo
