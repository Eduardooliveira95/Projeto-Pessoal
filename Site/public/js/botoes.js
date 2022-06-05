var botao = document.querySelector('#voltarAoTopo');

botao.addEventListener("click", function () {
   window.scrollTo(0,0) 
});

   botao__voltar.style.display = 'none'
function cadastrar1() {
   menu__meio.style.display = 'none'
   cadastro__meioo.style.display = 'flex';
   botao__voltar.style.display = 'flex'
   login__meio.style.display = 'none'
}

function login() {
   menu__meio.style.display = 'none'
   cadastro__meioo.style.display = 'none';
   login__meio.style.display = 'flex'
   botao__voltar.style.display = 'flex'
}

function voltar() {
   menu__meio.style.display = 'flex'
   cadastro__meioo.style.display = 'none';
   login__meio.style.display = 'none'
   botao__voltar.style.display = 'none'
}