<%-- 
    Document   : intefazCliente
    Created on : 22/03/2019, 01:48:18 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GAMELAB - STORE</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos\css/interfazCliente.css" />
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
    </head>
    <body>
        <!-- ASIDE -->
        <aside class="menu">
            <div class="header-imagen">
                <img src="Estilos/Imagenes/LETRA GMLB-w2.png" alt="logo-principal">
            </div>
            <ul class="menu-lista">
                <li class="menu-item">
                    <i class="material-icons">home</i>
                    <a href="inicioCliente.jsp">Inicio</a>
                </li>
                <li class="menu-item">
                    <i class="material-icons">local_grocery_store</i>
                    <a href="listarTienda">Tienda</a>
                </li>
                <li class="menu-item">
                    <i class="material-icons">library_add</i>
                    <a href="biblioteca.jsp">Biblioteca</a>
                </li>
                <li class="menu-item">
                    <i class="material-icons">file_download</i>
                    <a href="descargas.jsp">Descargas</a>
                </li>
               <!--<li class="menu-item">
                    <i class="material-icons">settings</i>
                    <a href="#">Configuraciones</a>
                </li> -->
                <li class="menu-item">
                    <i class="material-icons">account_circle</i>
                    <a href="perfilUsuario.jsp">Perfil</a>
                </li>
            </ul>
            <div class="footer-icon">
                <i class="material-icons">arrow_back</i>
            </div>
        </aside>
    </body>
</html>
