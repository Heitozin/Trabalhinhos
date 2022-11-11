Algoritmo "capitalismoOpressor3.0"

Var
posicao: inteiro
nome: vetor[0..4] de caracter
cargo: vetor[0..4] de caracter
bruto: vetor[0..4] de real
admissao: vetor[0..4] de caracter
salario: vetor[0..4] de Real
menu: inteiro
buscaNome: caracter


Inicio
repita
escreval("1 - CADASTRO DE COLABORADORES")
escreval("2 - INFORMAÇÕES DOS COLABORADORES")
escreval("3 - INFORMAÇÕES INDIVIDUAIS DOS COLABORADORES")
escreval("4 - FOLHA DE PAGAMENTO")
escreval("5 - SAIR")
leia(menu)

limpatela
escolha menu
caso 1
Para posicao de 0 ate 4 faca
escreval("CADASTRO DE COLABORADORES ")
escreva("1 - NOME: ")
leia(nome[posicao])

escreva("2 - CARGO: ")
leia(cargo[posicao])

escreva("3 - SALÁRIO BRUTO: ")
leia(salario[posicao])

escreva("4 - DATA DE ADMISSÃO: ")
leia(admissao[posicao])
Fimpara


caso 2
para posicao de 0 ate 4 faca
escreval("INFORMAÇÕES DOS COLABORADORES: ", nome[posicao], " / ", cargo[posicao], " / ", bruto[posicao], " / ",  admissao[posicao], " / ")
fimpara

caso 3
para posicao de 0 ate 4 faca
se buscaNome = nome[posicao] entao
escreval("INFORMAÇÕES INDIVIDUAIS DOS COLABORADORES: ", bruto[posicao])
 se (salario[posicao] > 1 ) entao
              bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.06)
fimse

 se (salario[posicao] > 1 ) entao
               bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.12)
               fimse

se salario[posicao] <= 1212 entao
      bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.075)
   senao
      se (salario[posicao] > 1212) e (salario[posicao] <= 2427.35) entao
         bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.27)
      senao
         se (salario[posicao] > 2427.35) e (salario[posicao] <= 3641.03) entao
            bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.30)
         senao
               bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.32)
            fimse
         fimse
      fimse
fimse
fimpara

caso 4
para posicao de 0 ate 4 faca
escreval("FOLHA DE PAGAMENTOS: ")
se salario[posicao] <= 1212 entao
      bruto[posicao]<- salario[posicao] - (salario[posicao] * 0.075)
   senao
      se (salario[posicao] > 1212) e (salario[posicao] <= 2427.35) entao
         bruto[posicao]<- salario[posicao] - (salario[posicao] * 0.09)
      senao
         se (salario[posicao] > 2427.35) e (salario[posicao] <= 3641.03) entao
            bruto[posicao]<- salario[posicao] - (salario[posicao] * 0.12)
         senao
               bruto[posicao]<- salario[posicao] - (salario[posicao] * 0.14)
            fimse
         fimse
      fimse
   Escreval("Com os descontos do INSS, seu salário será: ", bruto[posicao])

   se (salario[posicao] > 1 ) entao
               bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.06)
               fimse

Escreval("Com os descontos do VT seu salário será: ", bruto[posicao])
   se (salario[posicao] > 1 ) entao
               bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.12)
               fimse


   Escreval("Com os descontos do VR seu salário será: ", bruto[posicao])

   se salario[posicao] <= 1212 entao
      bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.075)
   senao
      se (salario[posicao] > 1212) e (salario[posicao] <= 2427.35) entao
         bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.27)
      senao
         se (salario[posicao] > 2427.35) e (salario[posicao] <= 3641.03) entao
            bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.30)
         senao
               bruto[posicao] <- salario[posicao] - (salario[posicao] * 0.32)
            fimse
         fimse
      fimse
      Escreval("Com os descontos totais, seu salário será: ", bruto[posicao])

      se salario[posicao] <= 1903.98 entao
      bruto[posicao] <- salario[posicao] - 0
      senao
      se (salario[posicao] > 1903.99) e (salario[posicao] <= 2826.65) entao
      bruto[posicao] <- salario - 142.80
      senao
      se (salario[posicao] > 2826.66) e (salario[posicao] <= 3751.05) entao
      bruto[posicao] <- salario - 354.80
      senao
      se (salario[posicao] > 3751.06) e (salario[posicao] <= 4664.68) entao
      bruto[posicao] <- salario[posicao] - 636.13
      senao
      se (salario[posicao] > 4664.69) entao
      bruto[posicao] <- salario[posicao] - 869.36
      fimse
      fimse
      fimse
      fimse
      fimse


      escreval("Com os descontos do imposto de renda, seu salário será:", bruto[posicao])

fimpara

caso 5
escreval("ADEUS ASSALARIADO!")
fimescolha
ate menu = 4



Fimalgoritmo