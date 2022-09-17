/*}O do-while tem o mesmo conceito que o while com uma coisa de diferença, a condição é verificada após os comandos
do bloco a serem executados, ou seja, mesmo que a condição seja falsa, é garantido que o bloco será executado ao menos 1 vez.*/

let contador = 0
do{
    console.log('O computador vale:' + contador)
    contador++
}while(contador == 1);