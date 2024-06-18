<%-- 
    Document   : registrarDesarrolladora
    Created on : 6/03/2019, 01:50:26 PM
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
                <form action="RegistrarDesarrolladora" method="POST">
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="Nombre" type="text" class="validate" name="Nombre">
                            <label for="Nombre">Nombre</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="Correo" type="text" class="validate" name="Correo">
                            <label for="Correo">Correo</label>
                        </div>

                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="Telefono" type="text" class="validate" name="Telefono">
                            <label for="Telefono">Telefono</label>
                        </div>
                        <div class="input-field col s6">
                            <select name="Paises" id="paises">
                                <option value="" disabled selected></option>
                                <option value="Estados Unidos">Estados Unidos</option>
                                <option value="Colombia">Colombia</option>
                                <option value="Puerto Rico">Puerto Rico</option>
                                <option value="Canada">Canada</option>
                            </select>
                            <label>Pais</label>
                        </div>

                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input id="gerente" type="text" class="validate" name="Gerente">
                            <label for="gerente">Nombre del gerente</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="pagina" type="text" class="validate" name="Pagina">
                            <label for="pagina">Pagina Web</label>
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
