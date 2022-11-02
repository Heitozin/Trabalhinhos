let form = document.getElementById("form-notas");
let btn = document.getElementById("gerar");
let relatorio = document.getElementById("relatorio")
//Vetor = Array
let nomes = [];
let materias = [];
let bimestre1 = [];
let bimestre2 = [];
let bimestre3 = [];
let bimestre4 = [];

//Váriavel auxiliar
let mostrarRel = "";

form.addEventListener('submit', function(event){
    event.preventDefault();

    //push - adicionar novos dados dentro de um vetor array
    nomes.push(form.nome_completo.value);
    materias.push(form.materia.value);
    bimestre1.push(Number(form.bim1.value));
    bimestre2.push(Number(form.bim2.value));
    bimestre3.push(Number(form.bim3.value));
    bimestre4.push(Number(form.bim4.value));
  


})

btn.addEventListener('click', function(event){
    event.preventDefault();
    mostrarRel = "";

    let mediaBimestral = 0
    
    for(let posicao = 0; posicao < nomes.length; posicao++){
        mediaBimestral = (bimestre1[posicao] + bimestre2[posicao] + bimestre3[posicao] + bimestre4[posicao]) / 4;


        /*descVr = salarios[posicao] * 0.09;
        descVt = salarios[posicao] * 0.06;
        salarioLiquido = salarios[posicao] - descVt - descVr;*/

        mostrarRel += `<p>Nome: ${nomes[posicao]} | Matéria: ${materias[posicao]} | Média: ${mediaBimestral}` 
    }
    relatorio.innerHTML = "";
    relatorio.innerHTML = mostrarRel;
})