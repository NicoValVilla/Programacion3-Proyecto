//modal
document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('.modal');
    var instances = M.Modal.init(elems);
});
//Select
document.addEventListener('DOMContentLoaded', function () {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems);
});


function mostrarInformacion(nombre, correo, telefono) {
    document.getElementById('NOMBRE').value = nombre;
    document.getElementById('CORREO').value = correo;
    document.getElementById('TELEFONO').value = telefono;
}




function editarInformacion(id,nombre,telefono,correo) {
    document.getElementById('id').value = id;
    document.getElementById('nombre').value = nombre;
    document.getElementById('telefono').value = telefono;
    document.getElementById('correo').value = correo;
}


//juegos
 document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.collapsible');
    var instances = M.Collapsible.init(elems);
  });
