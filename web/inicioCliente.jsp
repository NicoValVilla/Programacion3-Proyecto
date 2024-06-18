<%-- 
    Document   : inicioCliente
    Created on : 22/03/2019, 03:35:01 PM
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
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos/css/inicioClient.css" />
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
    </head>
    <body>
        <%@include file="intefazCliente.jsp" %>
        <div class="contenedor">
            <div class="row">
                <div class="col s4">
                    <div class="card primercard grey darken-3">
                        <div class="card-content white-text">
                            <br>
                            <br>
                            <br>
                            <span class="card-title">Devil May Cry 5</span>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                    <div class="card segundacard grey darken-3">
                        <div class="card-content white-text">
                            <br>
                            <br>
                            <br>
                            <span class="card-title">Tom Clancy's The Division 2</span>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                    <div class="card tercercard grey darken-3">
                        <div class="card-content white-text">
                            <br>
                            <br>
                            <br>
                            <span class="card-title">Metro Exodus</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s8">
                    <div class="card grey darken-3">
                        <div class="card-content white-text">
                            <span class="card-title">Nuevos juegos</span>
                            <p>Este 2019 viene cargado de muchos juegos y aqui en GAMELAB, podrás disfrutar de ellos, en el momento y en el lugar que quieras.</p>
                            <br>
                            <video class="video" autoplay muted>
                                <source src="Estilos/videos/video1.mp4" type="video/mp4">
                            </video>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                    <div class="card grey darken-3">
                        <div class="card-image">
                            <img src="Estilos/Imagenes/resident.jpg">
                            <span class="card-title">Resident Evil</span>
                        </div>
                        <div class="card-content">
                            <p class="grey-text">Resident Evil 2 is a survival horror game developed and published by Capcom. Players control police officer Leon S. Kennedy and college student Claire Redfield as they attempt to escape from Raccoon City during a zombie apocalypse.</p>
                        </div>
                        <div class="card-action">
                            <a href="#" class="red-text">Más información</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
