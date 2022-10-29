//VETORES
const frutas = ['Banana', 'Abacaxi', 'Uva', 'Maçã'];
const fruta = "Goiaba";

//VETORES COM PREENCHIMENTO PELO USUÁRIO
let nomes = [];

console.log("FRUTAS", frutas);
console.log("NOMES", nomes);

for (let posicao = 0; posicao < frutas.length; posicao++){
    console.log(frutas[posicao]);
}
frutas.map(fruta => {
    console.log(fruta)
})