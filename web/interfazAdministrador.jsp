<%-- 
    Document   : Interfaz-admin
    Created on : 3/02/2019, 04:22:41 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GAMELAB - DASHBOARD</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos/css/interfaz.css" />
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    </head>

    <body>
        <header class="container_header">
            <div class="container_header__logo">
                <img src="Estilos/Imagenes/LETRA GMLB-W.png" alt="Logo principal">
            </div>
            <div class="container_header__h">
                <div class=" main__notifications">
                    <button>
                        <i class="fas fa-bell"></i>
                    </button>
                </div>
                <div class="main__profile">
                    <%
                        HttpSession se = request.getSession(true);
                        String rol = "invitado";
                        if (se.getAttribute("rusuario") == null) {
                            rol = "invitado";
                        } else {
                            rol = (String) se.getAttribute("rusuario");
                        }
                    %>

                    <button id="dropdown">
                        <img src="./ArchivosUsuarios/PerfilesUsuarios/1000406884/Brian.svg" alt="">
                    </button>
                    <div class="dropdown__profile" id="item-dropdown">
                        <p>Brian Arcila</p>
                        <hr>
                        <a href="#">Perfil</a>
                        <a href="index.jsp">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </header>
        <aside class="container_aside">
            <ul>
                <li class="item item1 active" onclick="assignActiveClass('.item1')">
                    <a class="" href="inicioAdministrador.jsp"><i class="material-icons left">home</i>Inicio</a>
                </li>
                <!-- ventas -->
                <li class="item item1 item2" onclick="assignActiveClass('.item2')">
                    <a class="" href="ListarCompra"><i class="material-icons left">attach_money</i>Compras</a>
                </li>
                <!-- juegos -->
                <li class="item item1 item3" onclick="assignActiveClass('.item3')">
                    <a class="" href="listarJuegos"><i class="material-icons left">videogame_asset
                        </i>Juegos</a>
                </li>
                <li class="item item1 item3" onclick="assignActiveClass('.item3')">
                    <a class="" href="listarPlataformas"><i class="material-icons left">videogame_asset
                        </i>Plataformas</a>
                </li>
                <li class="item item1 item4" onclick="assignActiveClass('.item8')">
                    <a class="" href="#"><i class="material-icons left">assignment_turned_in
                        </i>Auditoria</a>
                </li>
                <!-- auditoria -->
                <li class="item item1 item5" onclick="assignActiveClass('.item8')">
                    <a class="" href="#"><i class="material-icons left">add_box
                        </i>Registro</a>
                </li>
            </ul>
        </aside>
        <script src="Estilos/js/interfaz.js"></script>
    </body>

</html>
