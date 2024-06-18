document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems);
});
/*let nom = Array.from(tipos)
 nom.forEach(function(e) {
 console.log(e.textContent);*/


/*const lista = document.querySelector('.lista-tipos');*/

/*const buscar = document.forms['buscar-info'].querySelector('input');
buscar.addEventListener('keyup', function (e) {
    const termino = e.target.value.toLowerCase();
    const tipos = lista.getElementsByTagName('li');
    Array.from(tipos).forEach(function (tipo) {
        const nombre = tipo.firstElementChild.textContent;
        if (nombre.toLowerCase.indexOf(termino) != 1) {
            tipo.style.display = 'block';
        } else {
            tipo.style.display = 'none';
        }
    });
});*/


/**/

/*Array.from(tipos).forEach(function(tipo){
 const nombre = tipo.firstElementChild.textContent;
 if (nombre.toLowerCase.indexOf(termino) != 1){
 tipo.style.display = 'block';
 }else {
 tipo.style.display = 'none';
 }
 });*/



function ver(nombre, descripcion,valor,desarrolladora,plataforma,categoria) {
    document.getElementById('nom').value = nombre;
    document.getElementById('des').value = descripcion;
    document.getElementById('valor').value = valor;
    document.getElementById('desarrolladoraJueg').value = desarrolladora;
    document.getElementById('plataformaJueg').value = plataforma;
    document.getElementById('categoriaJueg').value = categoria;
};
                