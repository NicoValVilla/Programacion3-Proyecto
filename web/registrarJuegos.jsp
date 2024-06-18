<%-- 
    Document   : registrarJuegos
    Created on : 26/03/2019, 08:08:37 PM
    Author     : PC
--%>

<%@page import="com.proyecto.CRUD.categorias.ListarCategoria"%>
<%@page import="com.proyecto.modelo.beans.Plataformas"%>
<%@page import="com.proyecto.modelo.beans.Categorias"%>
<%@page import="com.proyecto.CRUD.plataformas.ListarPlataforma"%>
<%@page import="com.proyecto.CRUD.desarrolladoras.ListarNombre"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.proyecto.modelo.beans.Desarrolladoras" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GAMELAB - DASHBOARD</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos/css/preordenes.css" />
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
    </head>
    <body>
        <div class="contenedor-registro-juegos">
            <!--<div class="row">
                <div class="col s12">
                    <a class="waves-effect waves-light btn red darken-2 modal-trigger" href="#modal1">
                        <i class="material-icons right">add</i>Registrar Juego</a>
                </div>
            </div>-->
        
        <!-- Dropdown Trigger -->
        <a class='dropdown-trigger btn red darken-2 ' href='#' data-target='dropdown1'><i class="material-icons left">add</i>Registrar</a>

        <!-- Dropdown Structure -->
        <ul id='dropdown1' class='dropdown-content'>
            <li><a class="modal-trigger" href="#modal1">Juego</a></li>
            <li><a class="modal-trigger" href="#modal2">Categoria</a></li>
            <li><a class="modal-trigger" href="#modal3">Plataforma</a></li>
        </ul>
        </div>

        <!--Modal de registrar-->
        <div id="modal1" class="modal">
            <div class="modal-content">
                <h4 class="center-align red-text">Registrar Juego</h4>
                <hr> 
                <form action="registroJuegos" method="post" enctype="multipart/form-data" >
                    <div class="row">   
                        <div class="input-field col s6">
                            <input id="juego" type="text" class="validate" name="nombre">
                            <label for="juego">Nombre del juego</label>
                        </div>
                        <div class="input-field col s6">
                            <!--<i class="material-icons prefix">description</i>-->
                            <textarea id="descripcion" class="materialize-textarea" name="descripcion"></textarea>
                            <label for="descripcion">Descripción</label>
                        </div>
                    </div>
                    <div class="row">
                        <%                            ListarNombre hola = new ListarNombre();
                            ArrayList<Desarrolladoras> des = hola.sad();
                        %>
                        <div class="input-field col s6">
                            <input id="juego" type="text" class="validate" name="valor">
                            <label for="juego">Valor del juego</label>
                        </div>

                        <div class="input-field col s6">
                            <select name="desarrolladora" id="desarrolladora" onchange="asignar()">
                                <option value="" disabled selected></option>
                                <% for (Desarrolladoras de : des) {%>
                                <option value="<%=de.getNombre()%>"><%=de.getNombre()%></option>
                                <%}%>
                            </select>
                            <label>Selecciona la desarrolladora</label>
                        </div>

                    </div>
                    <div class="row">
                        <%
                            ListarPlataforma Lista = new ListarPlataforma();
                            ArrayList<Plataformas> Plataformas = Lista.Listar();
                        %>
                        <div class="input-field col s6">
                            <select name="plataforma" id="plataforma" onchange="asignar()">
                                <option value="" disabled selected></option>
                                <% for (Plataformas pl : Plataformas) {%>
                                <option value="<%=pl.getNombre()%>"><%=pl.getNombre()%></option>
                                <%}%>
                            </select>
                            <label>Selecciona la plataforma</label>
                        </div>
                        <div class="input-field col s6">
                            <%
                                ListarCategoria ListarC = new ListarCategoria();
                                ArrayList<Categorias> Categorias = ListarC.ListarCat();
                            %>
                            <select name="categoria" id="categoria" onchange="asignar()">
                                <option value="" disabled selected></option>
                                <% for (Categorias ca : Categorias) {%>
                                <option value="<%=ca.getNombre()%>"><%=ca.getNombre()%></option>
                                <%}%>
                            </select>
                            <label>Selecciona la categoria</label>
                        </div>

                    </div>
                    <div class="row">
                        <div class="file-field input-field col s12">
                            <div class="btn red lighten-1">
                                <span>File</span>
                                <input type="file" name="caratula" >
                            </div>
                            <div class="file-path-wrapper">
                                <input class="file-path validate grey-text" type="text" placeholder="Sube aquí la caratula del juego">
                                <span class="helper-text" data-error="No seas así, ya te dije que 1920 x 1080" data-success="Eso esta bien!">Por favor sube imagenes con un tamaño de 1920 x 1080</span>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn waves-effect  red darken-4">Guardar</button>
                        <a href="#!" class="modal-close waves-effect waves-red btn-flat">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>

        <!--Modal Categorias-->
        <div class="modal" id="modal2">
            <div class="modal-content">
                <h4 class="center-align red-text">Registrar Categoria</h4>
                <hr> 
                <form action="registrarCategoria" method="post">
                    <div class="row">   
                        <div class="input-field col s12">
                            <input id="juego" type="text" class="validate" name="nombreCat">
                            <label for="juego">Nombre de la categoria</label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn waves-effect  red darken-4">Guardar</button>
                        <a href="#!" class="modal-close waves-effect waves-red btn-flat">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>
        
        <!--Modal Plataformas-->
        <div class="modal" id="modal3">
            <div class="modal-content">
                <h4 class="center-align red-text">Registrar Plataforma</h4>
                <hr> 
                <form action="registrarPlataforma" method="post">
                    <div class="row">   
                        <div class="input-field col s12">
                            <input id="juego" type="text" class="validate" name="nombrePla">
                            <label for="juego">Nombre de la Plataforma</label>
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
        <script src="Estilos/js/registrarJuegos.js"></script>
        <script>
                                function asignar()
                                {
                                    alert(document.getElementById('plataforma').options[seleccion.selectedIndex].text);
                                    document.getElementById('desarrolladora').value = document.getElementById('desarrolladora').options[seleccion.selectedIndex].text;
                                    document.getElementById('plataforma').value = document.getElementById('plataforma').options[seleccion.selectedIndex].text;
                                    document.getElementById('categoria').value = document.getElementById('categoria').options[seleccion.selectedIndex].text;
                                }

        </script>
    </body>
</html>

