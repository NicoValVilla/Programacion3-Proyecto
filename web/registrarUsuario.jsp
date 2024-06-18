<%-- 
    Document   : registrarUsuario
    Created on : 22/03/2019, 08:24:25 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GAMELAB - DASHBOARD</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos/css/preordenes.css" />
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <div class="contenedor-registro">
            <div class="row">
                <div class="col s12">
                    <a class="waves-effect waves-light btn red darken-2 modal-trigger" href="#modal1">
                        <i class="material-icons right">add</i>Registrar Desarrolladora</a>
                </div>
            </div>
        </div>
        <!--Modal de registrar-->
        <div id="modal1" class="modal">
            <div class="modal-content">
                <h4 class="center-align red-text">Registrar Desarrolladora</h4>
                <hr>
                <form action="registro" method="POST">
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="text" type="text" class="validate" name="usuario">
                            <label for="text">Nombre de usuario</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="email-r" type="email" class="validate" name="correo">
                            <label for="email">Correo</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="password-r" type="password" class="validate" name="contraseña">
                            <label for="password">Contraseña</label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn waves-effect  red darken-4">Guardar</button>
                        <a href="#!" class="modal-close waves-effect waves-red btn-flat">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>
        <script src="Estilos/js/materialize.min.js"></script>
        <script src="Estilos/js/desarrolladora.js"></script>
    </body>
</html>
