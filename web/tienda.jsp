<%-- 
    Document   : tienda
    Created on : 22/03/2019, 05:31:28 PM
    Author     : PC
--%>
<%@page import="com.proyecto.modelo.beans.Juegos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GAMELAB - DASHBOARD</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos\css/tienda.css" />
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <%@include file="intefazCliente.jsp" %>
        <%
            ArrayList<Juegos> jue = (ArrayList) request.getAttribute("ListaJT");
        %>
        <div class="container-juegos" id="container-juegos">
            <div class="row">
                <div class="col s12">
                    <h4 class="center-align white-text">
                        Juegos Gamelab
                    </h4>
                </div>
            </div>
            <form method="" action="">
                <div class="row grey darken-4">
                    <div class="input-field col s2">
                        <select>
                            <option value="" disabled selected>Selecciona tu opción </option>
                            <option value="1" id="option">Todo</option>
                            <option value="2" id="option">Juegos</option>
                            <option value="3" id="option">Gameplays</option>
                            <option value="3" id="option">Trailers</option>
                            <option value="3" id="option">Walkthrough</option>
                        </select>
                        <label>Tipos</label>
                    </div>
                    <div class="input-field col s10">
                        <input id="input" type="text" class="validate grey-text" placeholder="Introduce aquí lo que quieras buscar">
                    </div>
                </div>
            </form>

            <div class="row">
                <%
                    for (Juegos jueg : jue) {
                %>
                <div class="col s4">
                    <div class="card grey darken-3 hoverable">
                        <div class="card-image">
                            <img class="activator" src="Estilos/Imagenes/<%= jueg.getNombreImagen()%>">
                        </div>
                        <div class="card-content">
                            <p class="card-titulo white-text"><%=jueg.getNombre()%></p>
                            <p class="grey-text"><%=jueg.getDesarrolladoraNombre()%> | <%=jueg.getCategoriaNombre()%> </p>
                            <p class="grey-text right-align card-valor">COP <%=jueg.getValor()%></p>
                        </div>
                        <div class="card-reveal grey darken-4">
                            <span class="card-title">
                                <span class="card-title white-text text-darken-4 center-align">   
                                    <i class="material-icons right">close</i>

                                </span>
                                <a href="#" class="btn waves-effect waves-light transparent btn-large " id="btn-lok" onclick="Mostrar(
                                                document.getElementById('imagen').src = 'Estilos/Imagenes/<%= jueg.getNombreImagen()%>',
                                                document.getElementById('nombreJ').innerHTML = '<%= jueg.getNombre()%>',
                                                document.getElementById('descripcionJ').innerHTML = '<%= jueg.getDescripcion()%>',
                                                document.getElementById('desarrolladora').innerHTML = '<%= jueg.getDesarrolladoraNombre()%>',
                                                document.getElementById('categoria').innerHTML = '<%= jueg.getCategoriaNombre()%>',
                                                document.getElementById('plataforma').innerHTML = '<%= jueg.getPlataformaNombre()%>')">
                                    <i class="material-icons">remove_red_eye</i>

                                </a>
                        </div>
                    </div>

                </div>
                <%}%>
            </div>
        </div>
        <!--Listar Juego-->
        <div class="container-info" id="container-info">
            <div class="cabecera-imagen" id="cabecera-imagen">
                <img id="imagen" width="100%" height="100%">
            </div>
            <div class="body-informacion" id="body-informacion">
                <div class="row">
                    <div class="col s6">
                        <h4 class="white-text center-align" id="nombreJ"></h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col s6">
                        <p class="white-text descipcion" id="descripcionJ"></p>
                        <div class="row">
                            <div class="col s4">
                                <p class="grey-text titulo-cat center-align" >Desarrollador</p>
                                <p class="white-text center-align" id="desarrolladora"></p>
                            </div>
                            <div class="col s4">
                                <p class="grey-text titulo-cat center-align" >Categoria</p>
                                <p class="white-text center-align" id="categoria"></p>
                            </div>
                            <div class="col s4">
                                <p class="grey-text titulo-cat center-align" >Plataforma</p>
                                <p class="white-text center-align" id="plataforma"></p>
                            </div>
                        </div>
                    </div> 
                    <div class="col s6  left-align">
                        <h6 class="white-text center-align">¿Quieres conseguir este juego?</h6>
                        <div class="row">
                            <div class="col s12 center">
                                <a class="waves-effect waves-light btn-large red darken-4">COMPRAR</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                </div>
            </div>
        </div>
        <script src="Estilos/js/materialize.min.js"></script>
        <script src="Estilos/js/tienda.js"></script>
    </body>
</html>
