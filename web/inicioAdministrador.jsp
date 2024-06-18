<%-- 
    Document   : inicioAdministrador
    Created on : 27/02/2019, 02:18:21 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GAMELAB - DASHBOARD</title>
        <link rel="stylesheet" href="Estilos/css/inicioAdmin.css"/>
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
    </head>
    <body>
        <%@include file="interfazAdministrador.jsp" %>
        <div class="contenedor-graficas darken-4 grey">
            <div class="row">
                <div class="col s3">
                    <div class="card darken-3 grey">
                        <div class="card-content white-text">
                            <span class="card-title center-align">Visitas a la pagina</span>
                            <div class="visitas-content">
                                <h6 class=" center-align numero-stadi">1,293 </h6>
                                <p class=" green-text numero-porcen"> 5%</p> 
                                <i class="green-text material-icons arrow-up">arrow_drop_up</i>
                            </div>
                        </div>
                        <div class="card-action">
                        </div>
                    </div>
                </div>
                <div class="col s3">
                    <div class="card darken-3 grey">
                        <div class="card-content white-text">
                            <span class="card-title center-align">Descargas</span>
                            <h6 class="center-align numero-stadi">758</h6>
                            <p class="red-text numero-porcen-m">1.4%</p>
                            <i class="red-text material-icons arrow-up">arrow_drop_down</i>
                        </div>
                        <div class="card-action">
                        </div>
                    </div>
                </div>
                <div class="col s3">
                    <div class="card darken-3 grey">
                        <div class="card-content white-text">
                            <span class="card-title center-align">Inicios de Sesion</span>
                            <h6 class="center-align numero-stadi">1,234</h6>
                            <p class=" green-text numero-porcen">6.7% </p>
                            <i class=" green-text material-icons arrow-up-p">arrow_drop_up</i>
                        </div>
                        <div class="card-action">

                        </div>
                    </div>
                </div>
               <div class="col s3">
                    <div class="card darken-3 grey">
                        <div class="card-content white-text">
                            <span class="center-align card-title">Contenido nuevo</span>
                            <h6 class="center-align numero-stadi">758</h6>
                            <p class="red-text numero-porcen-m">1.3% </p>
                            <i class=" red-text material-icons arrow-up">arrow_drop_down</i>
                        </div>
                        <div class="card-action">

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s4">
                    <div class="card small darken-3 grey">
                        <div class="card-content white-text">
                            <span class="card-title  center-align">Nuevos Usuarios</span>
                            <canvas id="myChart"></canvas>
                        </div>
                        <br>
                        <div class="card-action">
                            <a href="#" class="darken-1 grey-text left-align">Ver más información</a>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                    <div class="card small darken-3 grey">
                        <div class="card-content white-text">
                            <span class="card-title center-align">Ganancias 2024</span>

                            <h6 class="center-align nombre-chart">Estado</h6>
                            <h1 class="center-align numero-chart light-green-text">59%<i class="material-icons light-green-text">arrow_upward</i>
                                <h6 class="center-align nombre-chart">Total</h6>
                                <h5 class="center-align text-bonito">$35.600.000</h5>

                        </div>
                    </div>
                </div>
                <div class="col s4">
                    <div class="card small darken-3 grey">
                        <div class="card-content white-text">
                            <span class="card-title center-align">Ventas totales</span>
                            <canvas id="myChart2"></canvas>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
        <script src="Estilos/js/materialize.min.js"></script>
        <script src="Estilos/js/inicioAdministrador.js"></script>
    </body>
</html>
