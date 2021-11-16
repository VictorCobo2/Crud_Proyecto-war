<%-- 
    Document   : index
    Created on : 13/05/2021, 11:16:42 PM
    Author     : AndrewSword
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAGINA CRUD</title>
        <meta charset="UTF-8">
        <link href="css/principal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="contenedorPrincipal">
            <div class="titulo">
                <h2> | Proyecto - CRUD | </h2>
            </div>
            <div class="tablaPrincipal">
                <ul>
                    <li>
                        <a href="Controlador?accion=insertar">Insertar</a>
                    </li>
                    <li>
                        <a href="Controlador?accion=listar">Listar</a>
                    </li>
                    <li>
                        <a href="Controlador?accion=consultar">Consultar</a>
                    </li>
                    <li>
                        <a href="Controlador?accion=modificar">Modificar</a>
                    </li>
                    <li>
                        <a href="Controlador?accion=eliminar">Eliminar</a>
                    </li>
                </ul>
            </div>

            <div>
                <footer>
                    <h2>Crud - Andrew Rincon - 752221</h2>
                    <h2> | HTML | CSS | JAVA | MYSQL | </h2>
                </footer>
            </div>
        </div>
    </body>
</html>
