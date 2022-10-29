Algoritmo "Medias_de_notas"

var

notasUm: inteiro
notasDois: inteiro
notasTres: inteiro
notasQuatro: inteiro
calculo: caracter
media: real
resultado: inteiro

inicio
escreva("Digite a sua primeira nota:")
  leia(notasUm)
escreva("Digite a sua segunda nota:")
  leia(notasDois)
escreva("Digite a sua terceira nota:")
  leia(notasTres)
escreva("Digite a sua quarta nota:")
  leia(notasQuatro)

media <- (notasUm + notasDois + notasTres + notasQuatro) / 4



escreva("Sua média final é:")
escreval(media)

se media >= 7 entao
escreva("aprovado")
fimse

se media <= 6 entao
escreva("reprovado")
fimse

fimalgoritmo
