Algoritmo "Sistema_de_notas"

Var
contador: inteiro
nome: caracter
bim: real
soma: real
media: real

Inicio
escreva("Digite o nome do aluno:")
leia(nome)

para contador de 1 at? 4 faca
escreva("Digite a nota do BIM", contador, ":")
leia(bim)

soma <- bim + soma
fimpara

media <- (soma / 4)
escreval("M?dia:", media)

se media >= 6 entao
escreval("Parab?ns, voc? est? aprovado!")
fimse

se (media >= 4) e (<= 5.99) entao
escreval("Parab?ns, voc? est? de recupera??o")
fimse

se (media <= 3.99) entao
escreval("Parab?ns, voc? est? reprovado!")
fimse


Fimalgoritmo