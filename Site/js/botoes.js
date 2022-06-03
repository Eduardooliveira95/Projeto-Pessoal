var botao = document.querySelector('#voltarAoTopo');

botao.addEventListener("click", function () {
   window.scrollTo(0,0) 
});

   botao__voltar.style.display = 'none'
function cadastrar(params) {
   menu__meio.style.display = 'none'
   cadastro__meio.style.display = 'flex';
   botao__voltar.style.display = 'flex'
}

function login(params) {
   menu__meio.style.display = 'none'
   cadastro__meio.style.display = 'none';
   login__meio.style.display = 'flex'
   botao__voltar.style.display = 'flex'
}

function voltar(params) {
   menu__meio.style.display = 'flex'
   cadastro__meio.style.display = 'none';
   login__meio.style.display = 'none'
   botao__voltar.style.display = 'none'
}