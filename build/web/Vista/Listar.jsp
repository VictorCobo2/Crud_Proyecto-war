<%-- 
    Document   : Listar
    Created on : 13/05/2021, 10:41:47 PM
    Author     : AndrewSword
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Estudiante"%>
<%@page import="Modelo.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTAR</title>
        <link href="css/Listar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="Contenedor">
            <div>
                <h2 class="titulo"> |----------------------    Listar    ----------------------| </h2>
            </div>

            <div class="tablaPrincipal">
                <ul>
                    <li>
                        <a href="Controlador?accion=insertar">Insertar</a>
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

            <h1 class="titulo">Listado Estudiantes</h1>
            <section>
                <table>
                    <thead>
                    <th class="numeroT">N.</th>
                    <th class="nombreT">Nombre</th>
                    <th class="apellidoT">Apellido</th>
                    <th class="carreraT">Carrera</th>
                    <th class="correoT">Correo</th>
                    <th class="semestreT">Semestre</th>
                    </thead>

                    <%
                        EstudianteDAO DAO = new EstudianteDAO();
                        List<Estudiante> Lista = DAO.Listar();
                        Estudiante E = null;

                        for (int i = 0; i < Lista.size(); i++) {
                            E = Lista.get(i);
                    %>

                    <tbody class="datos">
                    <th class="numeroT2"><%= E.getId()%></th>
                    <th class="nombreT2"><%= E.getNombre()%></th>
                    <th class="apellidoT2"><%= E.getApellido()%></th>
                    <th class="carreraT2"><%= E.getCarrera()%></th>
                    <th class="correoT2"><%= E.getCorreo()%></th>
                    <th class="semestreT2"><%= E.getSemestre()%></th>
                        <% } %>
                    </tbody>
                </table>
            </section>

            <section class="mensaje">
                <%
                    if (request.getAttribute("mensajeVista1") != null) {

                %>
                <h3><% out.print(request.getAttribute("mensajeVista1")); %></h3>
                <%
                    } else if (request.getAttribute("mensajeVista2") != null) {
                %>
                <h3><% out.print(request.getAttribute("mensajeVista2")); %></h3>
                <%
                    }
                %> 
            </section>

            <footer>
                <h2>Crud - Andrew Rincon - 752221</h2>
                <h2> | HTML | CSS | JAVA | MYSQL | </h2>
            </footer>
        </div>
    </body>
</html>

