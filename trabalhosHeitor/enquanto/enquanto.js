let form = document.getElementById("form-cadastro");
let btn = document.getElementById("botao");
let finalizacao = document.getElementById("parabens");

let nome = [];
let idade = [];
let email = [];
let cpf = [];
let telefone = [];

let mostrarCadastrar = "";

form.addEventListener('submit', function(event){
    event.preventDefault();

    nomes.push(form.nome.value);
    idades.push(Number(form.idade.value));
    emails.push(form.email.value);
    cpfs.push(Number(form.cpf.value));
    telefones.push(Number(form.telefone.value));
})

btn.addEventListener('click', function(event){
    event.preventDefault();
    mostrarCadastrar = "";

    let mensagem = "Parabéns, você foi cadastrado!"

    mostrarCadastrar += `<p>${mensagem}`

    parabens.innerHTML = mostrarCadastrar;
})



