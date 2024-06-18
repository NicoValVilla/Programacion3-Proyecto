function mostrarRegistro(){
    let Login = document.getElementById("login");
    let Registro = document.getElementById("registro");
    Login.classList.add("esconder");
    Registro.classList.add("mostrar");
}

function mostrarLogin(){
    let Login = document.getElementById("login");
    let Registro = document.getElementById("registro");
    Registro.classList.replace("mostrar","esconder");
    Login.classList.replace("esconder", "mostrar");
    
}