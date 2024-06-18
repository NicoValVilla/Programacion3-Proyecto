<%-- 
    Document   : listarDesarrolladora
    Created on : 28/02/2019, 10:50:22 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.proyecto.modelo.beans.Desarrolladoras" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GAMELAB - DASHBOARD</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos/css/preordenes.css" />
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
    </head>
    <body>
        <%@include file="interfazAdministrador.jsp" %>

        <%            ArrayList<Desarrolladoras> des = (ArrayList) request.getAttribute("ListaD");
        %>

        <%@include file="registrarDesarrolladora.jsp" %>

        <div class="contenedor">
            <!--Tabla Listar-->
            <table class="white-text centered bordered grey darken-4 tabla-dev">
                <thead class="thead-light">
                    <tr>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Telefono</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Desarrolladoras d : des) {
                    %>
                    <tr>
                        <td><%=d.getNombre()%></td>
                        <td><%=d.getCorreo()%></td>
                        <td><%=d.getTelefono()%></td>
                        <td>
                            <ul id="dropdown2" class=" dropdown-mystyle dropdown-content z-depth-5">
                                <li>
                                    <a href="#modal2" class="modal-trigger" onclick="mostrarInformacion('<%= d.getNombre()%>', '<%= d.getCorreo()%>', '<%= d.getTelefono()%>')">
                                        <i class="material-icons pecil">remove_red_eye</i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#modal3" class="modal-trigger" onclick="editarInformacion('<%= d.getCodigo()%>', '<%=d.getNombre()%>', '<%=d.getTelefono()%>', '<%=d.getCorreo()%>')">
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
        <!--visualizar informacion-->
        <div id="modal2" class="modal ">
            <div class="modal-content">
                <h4 class="center-align red-text">Información detallada</h4>
                <hr>
                <form role="form">
                    <div class="row">
                        <div class="input-field col s4">
                            <label class="black-text">Nombre</label>
                            <br>
                            <input id="NOMBRE" type="text" disabled name="nombre" class="validate">

                        </div>
                        <div class="input-field col s4">
                            <label class="black-text">Correo</label>
                            <br>
                            <input type="text" id="CORREO" disabled name="correo" class="validate"> 
                        </div>
                        <div class="input-field col s4">
                            <label class="black-text">Telefono</label>
                            <br>
                            <input type="text" id="TELEFONO" disabled name="telefono" class="validate">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <a href="" class="modal-close waves-effect waves-green btn-flat">Cerrar</a>
            </div>
        </div>

        <!-- editar informacion -->
        <div id="modal3" class="modal">
            <div class="modal-content">
                <h4 class="center-align red-text">Editar Desarrolladora</h4>
                <hr>
                <form role="form" action="ActualizarDesarrolladora">
                    <div class="row">
                        <div class="input-field col s4">
                            <label>Id</label>
                            <br>
                            <input id="id" type="text" class="validate" name="id" disabled>

                        </div>
                        <div class="input-field col s4">
                            <label>Nombre</label>
                            <br>
                            <input id="nombre" type="text" class="validate" name="nombre">
                        </div>
                        <div class="input-field col s4">
                            <label for="Telefono">Telefono</label>
                            <br>
                            <input id="telefono" type="text" class="validate" name="telefono">
                        </div>
                    </div>
                    <div class="input-field col s12">
                        <label for="Correo">Correo</label>
                        <br>
                        <input id="correo" type="text" class="validate" name="correo">
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
