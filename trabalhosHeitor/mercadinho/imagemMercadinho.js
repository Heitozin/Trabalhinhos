let formMercadinho = document.getElementById("form-carrinho");
let divCupomFiscal = document.getElementById("cupom");
let imagemProduto = document.getElementById("produto-imagem");
let div_total_a_pagar = document.getElementById("totalPagar");
let codigoProduto = document.getElementById("codigo-produto");
let btn = document.getElementById("gerar");

const mercadorias = [
    [100, "Arroz", 21.90, "imagem-mercadinho/arroz.png"],
    [101, "Feijão", 7.90, "imagem-mercadinho/feijao.jpg"],
    [102, "Biscoito", 3.89, "imagem-mercadinho/biscoito.jpg"],
    [103, "Suco", 1.29, "imagem-mercadinho/suco.jpg"],
    [104, "Leite", 7.99, "imagem-mercadinho/leite.jpg"]
]

codigoProduto.addEventListener('keyup', function(){
    console.log(codigoProduto.value);
    mercadorias.forEach(produtos => {
        if(codigoProduto.value == produtos[0]){
            formMercadinho.nome_produto.value = produtos[1];
            formMercadinho.preco_produto.value = produtos[2];
            formMercadinho.qtd_produto.focus();
            imagemProduto.src = produtos[3]
        }
    })
})

let produtoCodigo = [];
let nomeProduto = [];
let quantidade = [];
let preco = [];

form.addEventListener('submit', function(event){
    event.preventDefault();

    produtoCodigo.push(codigoProduto.value);
    nomeProduto.push(form.nome_produto.value);
    quantidade.push(form.qtd_produto.value);
    preco.push(form.preco_produto.value);
}