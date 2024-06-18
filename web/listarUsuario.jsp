<%-- 
    Document   : listarUsuario
    Created on : 22/03/2019, 08:27:37 PM
    Author     : PC
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.proyecto.modelo.beans.Usuarios"%>
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
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <%@include file="interfazAdministrador.jsp" %>
        <%            ArrayList<Usuarios> usu = (ArrayList) request.getAttribute("ListaU");
        %>
        <%@include file="registrarUsuario.jsp" %>
        
        <div class="contenedor-usu">
            <!--tabla-->
            <table class="white-text centered bordered grey darken-4">
                <thead class="thead-light">
                    <tr>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Contraseña</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Usuarios u : usu) {
                    %>
                    <tr>
                        <td><%=u.getNombre()%></td>
                        <td><%=u.getCorreo()%></td>
                        <td><%=u.getContrasena()%></td>
                        <td>
                            <ul id="dropdown2" class="dropdown-mystyle dropdown-content  z-depth-5">
                                <li>
                                    <a href="#modal2" class="modal-trigger ver" >
                                        <i class="material-icons pecil">remove_red_eye</i>
                                    </a>
                                </li>
                                <li> 
                                    <a href="#modal3" class="modal-trigger" >
                                        <i class="material-icons pecil">edit</i>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <i class="material-icons trash">delete</i>

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
    </body>
</html>
