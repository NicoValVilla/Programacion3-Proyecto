<%-- 
    Document   : juegos
    Created on : 12/03/2019, 07:19:50 PM
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
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos\css\juegos.css" />
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>   
    </head>
    <body>
        <%@include file="interfazAdministrador.jsp"  %>
        <%@include file="registrarJuegos.jsp" %>
        <div class="container-juegos ">
            <div class="container-listar__juegos">
                <%            ArrayList<Juegos> jue = (ArrayList) request.getAttribute("ListaJ");
                %>
                <table class="white-text centered bordered grey darken-4 responsive-table">
                    <thead class="thead-light">
                        <tr>
                            <th >Nombre</th>
                            <th width="45%" class="descripcion">Descripción</th>
                            <th>Valor</th>
                            <th>Caratula</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>

                    <tbody>
                        <%
                            for (Juegos j : jue) {
                        %>
                        <tr>
                            <td><%=j.getNombre()%></td>
                            <td><%=j.getDescripcion()%></td>
                            <td><%=j.getValor()%></td>
                            <td><img src="Estilos/Imagenes/<%= j.getNombreImagen()%>" width="250"> </td>
                            <td>
                                <ul id="dropdown2" class=" dropdown-mystyle dropdown-content z-depth-5">
                                    <li>
                                        <a class="modal-trigger" href="#modalM">
                                            <i class="material-icons pecil" onclick="ver('<%=j.getNombre()%>', '<%=j.getDescripcion()%>','<%=j.getValor()%>','<%=j.getDesarrolladoraNombre()%>','<%=j.getPlataformaNombre()%>','<%=j.getCategoriaNombre()%>')">remove_red_eye</i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="" class="modal-trigger">
                                            <i class="material-icons pecil">edit</i>
                                        </a>
                                    </li>
                                </ul>
                                <a class="btn-small btn-floating dropdown-trigger grey darken-1" href="#!" data-target="dropdown2"><i class="material-icons right">dehaze</i></a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>

        </div>
        <!-- Modal de listar-->
        <div class="modal" id="modalM">
            <div class="modal-content">
                <h4 class="center-align red-text">Detalle Del Juego</h4>
                <hr> 
                <form action="mostrarJuegos">
                    <div class="row">
                        <div class="input-field col s6">
                            <input type="text" id="nom" readonly disabled class="black-text">
                        </div>
                        <div class="input-field col s6">
                            <textarea type="text" id="des" readonly class="materialize-textarea"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input type="text" id="valor" readonly disabled class="black-text">
                        </div>
                        <div class="input-field col s6">
                            <input type="text" id="desarrolladoraJueg" readonly disabled class="black-text">
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input type="text" id="plataformaJueg" readonly disabled class="black-text">
                        </div>
                        <div class="input-field col s6">
                            <input type="text" id="categoriaJueg" readonly disabled class="black-text">
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <script src="Estilos/js/materialize.min.js"></script>
        <script src="Estilos/js/juego.js"></script>
    </body>
</html>
