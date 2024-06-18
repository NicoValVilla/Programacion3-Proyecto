<%-- 
    Document   : index
    Created on : 14/02/2019, 07:43:42 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>GAMELAB</title>
        <link rel="stylesheet" href="Estilos/css/index.css">
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    </head>
    <body>
        <div class="container-information">
            <header class="container-header" >
                <div class="row">
                    <div class="col s2 img-logo left">
                        <img src="Estilos/Imagenes/Logo-2.png"  alt="Logo Gamelab">  
                    </div>
                </div>
            </header>
            <!--login-->
            <div class="contenedor-login" id="login" >
                <div class="row">
                    <div class="col s12">
                        <h3 class="grey-text center-align">Iniciar Sesion</h3>
                    </div>
                </div>
                <form action="Login" method="POST">
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="email" type="email" class="validate" name="correo">
                            <label for="email">Correo</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="password" type="password" class="validate" name="contrasena">
                            <label for="password">Contraseña</label>
                        </div>
                    </div>
                    <div class="row">
                        <p class="offset-l2">
                            <label>
                                <input type="checkbox" />
                                <span >Remember Me</span>
                            </label>
                        </p>
                    </div>
                    <div class="row">
                        <p class="right-align"><a href="#" class="red-text">Forgot password?</a></p>
                    </div>
                    <div class="row center-align">
                        <button type="submit" class="btn red waves-effect waves-light darken-2">Iniciar Sesion</button>
                    </div>
                </form>
                <div class="row">
                    <div class="col s12">
                        <p class="grey-text center-align">¿No tienes una cuenta?<a href="#" class="red-text" onclick="mostrarRegistro()"> ¡Creala!</a></p>
                    </div>
                </div>
                <!--<div class="row">
                    <div class="col s12 center-align">
                        <p class="grey-text center-align">O inicia session con</p>
                        <button type="submit" class="btn waves-effect waves-light light-blue darken-3"><i class="fab fa-facebook-f"></i></button>
                        <button type="submit" class="btn waves-effect waves-light red darken-2"><i class="fab fa-google"></i></button>
                    </div>
                </div>-->
            </div>
        </div>
        <!--Registro-->
        <div class="contenedor-registro" id="registro">
            <div class="row">
                <div class="col s12">
                    <h3 class="grey-text center-align">Registrate</h3>
                </div>
            </div>
            <form action="registro" method ="POST">
                <div class="row">
                    <div class="input-field col s12">
                        <input id="text" type="text" class="validate" name="usuario">
                        <label for="text">Nombre de usuario</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="email-r" type="email" class="validate" name="correo">
                        <label for="email">Correo</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="password-r" type="password" class="validate" name="password">
                        <label for="password">Contraseña</label>
                    </div>
                </div>
                <div class="row center-align">
                    <button type="submit" class="btn red waves-effect waves-light darken-2">Registrarme</button>
                </div>
            </form>
            <div class="row">
                <div class="col s12">
                    <p class="grey-text center-align">¿Ya tienes una cuenta?<a href="#" class="red-text" onclick="mostrarLogin()"> ¡Inicia Sesion!</a></p>
                </div>
            </div>
        </div>
        <!--Imagen principal-->
        <div class="container-imagen">
            <div class="row container-texto">
                <h2 class="white-text">Bienvenido a GAMELAB</h2>
                <p class="white-text container-parrafo">Inicia Sesion y comienza a descubrir nuestro universo de juegos</p>     
            </div>

        </div>
        <script src="Estilos/js/main.js"></script>
        <script src="Estilos/js/materialize.min.js"></script>
    </body>
</html>
