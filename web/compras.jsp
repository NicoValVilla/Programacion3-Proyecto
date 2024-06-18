<%-- 
    Document   : Preordenes
    Created on : 3/02/2019, 06:46:48 PM
    Author     : PC
--%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.proyecto.modelo.beans.Compras" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GAMELAB - DASHBOARD</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="Estilos/css/preordenes.css" />
        <link rel="stylesheet" href="Estilos/css/materialize.min.css"/>
        <link rel="shortcut icon" href="Estilos/Imagenes/Logo-2.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
    </head>
    <body>
        <%@include file="interfazAdministrador.jsp" %>
        <%            ArrayList<Compras> com = (ArrayList) request.getAttribute("ListaC");
        %>
        <div class="contenedor">
            <div class="row">
                <div class="col s12">
                    <a class="waves-effect waves-light btn red darken-2 modal-trigger" href="#modal1">
                        <i class="material-icons right">add</i>Registrar Compra</a>
                </div>
            </div>
            <!--Modal registrar-->
            <div id="modal1" class="modal">
                <div class="modal-content">
                    <h4 class="center-align red-text">Registrar Compra</h4>
                    <hr>
                    <form action="RegistrarCompra" METHOD="POST">
                        <div class="row">
                            <div class="input-field col s4">
                                <input id="Fecha" type="date" class="validate" name="Fecha">
                                <label for="Fecha">Fecha</label>
                            </div>
                            <div class="input-field col s4">
                                <input id="Cantidad" type="number" class="validate" name="Cantidad">
                                <label for="Cantidad">Cantidad</label>
                            </div>
                            <div class="input-field col s4">
                                <input id="Usuario" type="text" class="validate" name="Usuario">
                                <label for="Usuario">Usuario id</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s4">
                                <input id="Juego" type="text" class="validate" name="Juego">
                                <label for="Juego">Juego id</label>
                            </div>
                            <div class="input-field col s4">
                                <select multiple name="metodo_pago" id="Pago">
                                    <option value="" disabled >Selecciona el metodo de pago</option>
                                    <option value="Tarjeta de credito">Tarjeta de credito</option>
                                    <option value="Tarjeta de debito">Tarjeta de debito</option>
                                </select>
                                <label>Metodos de pago</label>
                            </div>
                            <div class="col s4">
                                <label>Estado de la compra</label>
                                <select multiple name="Estado" id="Estado">
                                    <option value = "" disabled  >Selecciona el proceso de compra</option>
                                    <option value = "Pre orden">Pre orden</option>
                                    <option value = "En proceso">En proceso</option>
                                </select>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input id="Precio" type="text" class="validate" name="Precio">
                                <label for="Precio">Precio</label>
                            </div>
                            <div class="input-field col s6">
                                <textarea id="Descripción" class="materialize-textarea" name="Descripcion"></textarea>
                                <label for="Descripcion">Descripción</label>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn waves-effect  red darken-4" id="button">Guardar</button>
                            <a href="#!" class="modal-close waves-effect waves-red btn-flat">Cerrar</a>
                        </div>
                    </form>
                </div>
            </div>

            <!--Tabla-->
            <table class="white-text centered bordered grey darken-4 responsive-table">
                <thead class="thead-light">
                    <tr>

                        <th>Fecha</th>
                        <th>Cantidad</th>
                        <th>Usuario</th>
                        <th>Juego</th>
                        <th>Metodo de pago</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Compras c : com) {
                    %>
                    <tr>
                        <td><%=c.getFecha()%></td>
                        <td><%=c.getCantidad()%></td>
                        <td><%=c.getUsuariosNombre()%></td>
                        <td><%=c.getJuegosNombre()%></td>
                        <td><%=c.getMetodoPago()%></td>
                        <td><%=c.getEstado()%></td>
                        <td>
                            <ul id="dropdown2" class="dropdown-mystyle dropdown-content  z-depth-5">
                                <li>
                                    <a href="#modal2" class="modal-trigger ver" onclick="visualizarInformacion('<%=c.getFecha()%>', '<%=c.getCantidad()%>', '<%=c.getUsuariosNombre()%>', '<%=c.getJuegosNombre()%>', '<%=c.getMetodoPago()%>', '<%=c.getEstado()%>', '<%=c.getPrecio()%>', '<%=c.getDescripcion()%>')">
                                        <i class="material-icons pecil">remove_red_eye</i>
                                    </a>
                                </li>
                                <li> 
                                    <a href="#modal3" class="modal-trigger" onclick="editarInformacion('<%=c.getId()%>', '<%=c.getFecha()%>', '<%=c.getCantidad()%>', '<%=c.getUsuariosNombre()%>', '<%=c.getJuegosNombre()%>', '<%=c.getMetodoPago()%>', '<%=c.getEstado()%>', '<%=c.getPrecio()%>', '<%=c.getDescripcion()%>')">
                                        <i class="material-icons pecil">edit</i>
                                    </a>
                                </li>
                                <li>
                                    <a href="EliminarCompra?id=<%=c.getId()%>">
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
        <!-- Modal visualizar informacion-->
        <div id="modal2" class="modal">
            <div class="modal-content">
                <h4 class="center-align red-text">Información Detallada</h4>
                <hr>
                <form role="form">
                    <div class="row">
                        <div class="input-field col s4">
                            <label class="black-text">Fecha</label>
                            <br>
                            <input type="text" id="fecha" disabled>
                        </div>
                        <div class="input-field col s4">
                            <label class="black-text">Cantidad</label>
                            <br>
                            <input type="text" id="cantidad" disabled>
                        </div>
                        <div class="input-field col s4">
                            <label class="black-text">Usuario</label>
                            <br>
                            <input type="text" id="usuario" disabled>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s4">
                            <label class="black-text">Juego</label>
                            <br>
                            <input type="text" id="juego" disabled>
                        </div>
                        <div class="input-field col s4">
                            <label class="black-text">Metodo de pago</label>
                            <br>
                            <input type="text" id="pago" disabled>
                        </div>
                        <div class="input-field col s4">
                            <label class="black-text">Estado de la compra</label>
                            <br>
                            <input type="text" id="estado" disabled>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <label class="black-text">Precio</label>
                            <br>
                            <input type="text" id="precio" disabled>
                        </div>
                        <div class="input-field col s6">
                            <label class="black-text">Descripción</label>
                            <br>
                            <input type="text" id="descripcion" disabled>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <a href="" class="modal-close waves-effect waves-green btn-flat">Cerrar</a>
            </div>
        </div>

        <!--Editar información-->
        <div id="modal3" class="modal">
            <div class="modal-content">
                <h4 class="center-align red-text">Editar Información</h4>
                <hr>
                <form action="ActualizarCompra">
                    <div class="row">
                        <div class="input-field col s4">
                            <label>Id</label>
                            <br>
                            <input id="idtable" type="text" class="validate" name="idtable" disabled>
                        </div>
                        <div class="input-field col s4">
                            <label>Fecha</label>
                            <br>
                            <input id="FECHA" type="date" class="validate" name="fecha">                            
                        </div>
                        <div class="input-field col s4">
                            <label for="cantidad">Cantidad</label>
                            <br>
                            <input id="CANTIDAD" type="text" class="validate" name="cantidad">
                        </div>

                    </div>
                    <div class="row">
                        <div class="input-field col s4">
                            <label for="usuario">Usuario</label>
                            <br>
                            <input id="USUARIO" type="text" class="validate" name="usuario">
                        </div>
                        <div class="input-field col s4">
                            <label>Juego</label>
                            <br>
                            <input id="JUEGO" type="text" class="validate" name="juego">
                        </div>
                        <div class="input-field col s4">
                            <select name="pago" id="PAGO">
                                <option value="" disabled selected></option>
                                <option value="Tarjeta de credito">Tarjeta de credito</option>
                                <option value="Tarjeta de debito">Tarjeta de debito</option>

                            </select>
                            <label>Metodo de pago</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s4">
                            <select name="estado" id="ESTADO">
                                <option value="" disabled selected></option>
                                <option value="Pre orden">Pre orden</option>
                                <option value="Compra">Compra</option>

                            </select>
                            <label>Estado de la compra</label>
                        </div>
                        <div class="input-field col s4">
                            <label for="precio">Precio</label>
                            <input id="PRECIO" type="text" class="validate" name="precio">
                        </div>
                        <div class="input-field col s4">
                            <label for="descripcion">Descripción</label>
                            <input id="DESCRIPCION" type="text" class="validate" name="descripcion">
                        </div>
                    </div>  
                    <div class="modal-footer">
                        <button type="submit" class="btn waves-effect  red darken-4">Guardar</button>
                        <a href="#!" class="modal-close waves-effect waves-red btn-flat">Cerrar</a>
                    </div>
                </form>
            </div>
        </div>

        <script src="Estilos/js/compras.js"></script>
        <script src="Estilos/js/materialize.min.js"></script>

    </body>
</html>
