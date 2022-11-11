let form = document.getElementById("form-colaborador");
let btn = document.getElementById("gerar");
let relatorio = document.getElementById("relatorio")
//Vetor = Array
let nomes = [];
let cargos = [];
let salarios = [];
//Váriavel auxiliar
let mostrarRel = "";

form.addEventListener('submit', function(event){
    event.preventDefault();

    //push - adicionar novos dados dentro de um vetor array
    nomes.push(form.nome_completo.value);
    cargos.push(form.cargo.value);
    salarios.push(Number(form.salario.value));

    console.log(nomes)
    console.log(cargos)
    console.log(salarios)

})

btn.addEventListener('click', function(event){
    event.preventDefault();
    mostrarRel = "";

    let descVt = 0;
    let descVr = 0;
    let salarioLiquido = 0;

    for(let posicao = 0; posicao < nomes.length; posicao++){
        descVr = salarios[posicao] * 0.09;
        descVt = salarios[posicao] * 0.06;
        salarioLiquido = salarios[posicao] - descVt - descVr;

        mostrarRel += `<p>Nome: ${nomes[posicao]} | Cargo: ${cargos[posicao]} | Salário bruto: ${salarios[posicao]} | Salário líquido: ${salarioLiquido}</p>`
    }
    relatorio.innerHTML = "";
    relatorio.innerHTML = mostrarRel;
})