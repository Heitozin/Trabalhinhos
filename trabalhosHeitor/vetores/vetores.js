//VETORES
const frutas = ['Banana', 'Abacaxi', 'Uva', 'Maçã'];
const fruta = "Goiaba";

//VETORES COM PREENCHIMENTO PELO USUÁRIO
let nomes = [];

for (let posicao = 0; posicao < frutas.length; posicao++){
    console.log(frutas[posicao]);
}
frutas.map(item => {
    console.log(item);
})

frutas.forEach(item => {
    console.log(item);
})