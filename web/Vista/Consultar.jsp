<%-- 
    Document   : Consultar
    Created on : 13/05/2021, 01:44:56 PM
    Author     : AndrewSword
--%>

<%@page import="Modelo.Estudiante"%>
<%@page import="Modelo.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONSULTAR</title>
        <link href="css/Consultar.css" rel="stylesheet" type="text/css"/>dds 
    </head>
    <body>
        <div class="contenedorPrincipal">
            <div class="tablaPrincipal">
                <ul>
                    <li>
                        <a href="Controlador?accion=listar">Listar</a>
                        <a href="/sourse/Web Page/Vista/Listar.jsp">Listar2</a>

                    </li>
                    <li>
                        <a href="Controlador?accion=insertar">Insertar</a>
                    </li>
                    <li>
                        <a href="Controlador?accion=modificar">Modificar</a>
                    </li>
                    <li>
                        <a href="Controlador?accion=eliminar">Eliminar</a>
                    </li>
                </ul>
            </div>

            <h1 class="titulo">Consultar Estudiante: </h1>
            <form class="formulario" action="Controlador">
                <h3>Ingresar ID del estudiante:</h3>
                <div class="contenido">
                    <div>
                        <label>ID: </label>
                        <input type="number" name="id" placeholder="Escribe el ID: ">
                    </div>
                    <div>
                        <input type="submit" name="accion" value="Consultar">
                    </div>
                </div>
            </form>
            <%
                int ID = 0;
                String mensaje = "";

                try {
                    ID = Integer.parseInt((String) request.getAttribute("mensajeVista"));
                } catch (NumberFormatException e) {
                    ID = 0;
                }

                if (ID != 0) {
                    String Id = Integer.toString(ID);
                    EstudianteDAO DAO = new EstudianteDAO();
                    Estudiante E = new Estudiante();
                    int r = DAO.Consultar(E, Id);

                    String id2 = "";
                    int id = 0;
                    String nom = "";
                    String apel = "";
                    String carre = "";
                    String corre = "";
                    int mestre = 0;
                    System.out.println(ID);
                    System.out.println(mensaje);
                    mensaje = "hola2";

                    if (r == 0) {
                        id = E.getId();
                        nom = E.getNombre();
                        apel = E.getApellido();
                        carre = E.getCarrera();
                        corre = E.getCorreo();
                        mestre = E.getSemestre();

            %>

            <section class="furm">
                <h2>Información Estudiante:</h2>
                <div class="contenido">
                    <table>
                        <thead>
                        <th class="numeroT">N.</th>
                        <th class="nombreT">Nombre</th>
                        <th class="apellidoT">Apellido</th>
                        <th class="carreraT">Carrera</th>
                        <th class="correoT">Correo</th>
                        <th class="semestreT">Semestre</th>
                        </thead>

                        <tbody class="datos">
                            <tr>
                                <td class="numeroT2"><%= id%></td>
                                <td class="nombreT2"><%= nom%></td>
                                <td class="apellidoT2"><%= apel%></td>
                                <td class="carreraT2"><%= carre%></td>
                                <td class="correoT2"><%= corre%></td>
                                <td class="semestreT2"><%= mestre%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>
            <%                        mensaje = "Se ha encontrado al Estudiante";
                    } else {
                        mensaje = "No se ha encontrado al Estudiante";
                    }
                }
            %>
            <section class="mensaje">
                <h3><%= mensaje%></h3>
            </section>

            <footer>
                <h2>Crud - Andrew Rincon - 752221</h2>
                <h2> | HTML | CSS | JAVA | MYSQL | </h2>
            </footer>
        </div>
    </body>
</html>
