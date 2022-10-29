//Para contador de 1 ate 4 faca

let soma = 0;
let media = 0;

for(let contador = 1; contador <= 4 ; contador++){
    let bimestre = prompt(`Digite a nota do BIM${contador}`);
    soma = Number(bimestre) + soma;
}

media = soma / 4;

console.log(media);

if(media >=7){
    console.log("Aprovado");
    //Senao se (media >= 4) e (media < 6) entao
}else if(media >= 4 && media < 6){
    console.log("Recuperação");
    //Senao
} else{
    console.log("Reprovado")
}