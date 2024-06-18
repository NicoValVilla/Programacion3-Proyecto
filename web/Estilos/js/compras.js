//modal
document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('.modal');
    var instances = M.Modal.init(elems);
});
//button float
document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('.dropdown-trigger');
    var instances = M.Dropdown.init(elems);
});
//Select
document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems);
});

/*
 function registrarCompra() {
 let request = new XMLHttpRequest();
 request.open("POST", "RegistrarCompra", true);
 request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
 request.send();
 request.onreadystatechange = function () {
 if (request.readyState === 4 & request.status === 200) {
 var json = request.response;
 var jsonA = JSON.parse(json);
 console.log(jsonA);
 }
 }
 });
 }
 
 
 function enviarDatos(){
 let button = document.getElementById('button');
 button.addEventListener('click', function () {
 let fecha = document.getElementById('Fecha').value;
 let cantidad = document.getElementById('Cantidad').value;
 let usuario = document.getElementById('Usuario').value;
 let juego = document.getElementById('Juego').value;
 let pago = document.getElementById('Pago').value;
 let estado = document.getElementById('Estado').value;
 let valor = document.getElementById('Precio').value;
 let descripcion = document.getElementById('Descripción').value;
 }*/


function visualizarInformacion(fecha, cantidad, usuario, juego, pago, estado, precio,descripcion) {
    document.getElementById('fecha').value = fecha;
    document.getElementById('cantidad').value = cantidad;
    document.getElementById('usuario').value = usuario;
    document.getElementById('juego').value = juego;
    document.getElementById('pago').value = pago;
    document.getElementById('estado').value = estado;
    document.getElementById('precio').value = precio;
    document.getElementById('descripcion').value = descripcion;
}

function editarInformacion(idtable,fecha,cantidad, usuario, juego, pago, estado, precio,descripcion){
    document.getElementById('idtable').value = idtable;
    document.getElementById('FECHA').value = fecha;
    document.getElementById('CANTIDAD').value = cantidad;
    document.getElementById('USUARIO').value = usuario;
    document.getElementById('JUEGO').value = juego;
    document.getElementById('PAGO').value = pago;
    document.getElementById('ESTADO').value = estado;
    document.getElementById('PRECIO').value = precio;
    document.getElementById('DESCRIPCION').value = descripcion;
}