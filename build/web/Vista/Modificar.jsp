<%-- 
    Document   : Actualizar
    Created on : 13/05/2021, 01:45:42 PM
    Author     : AndrewSword
--%>

<%@page import="Modelo.Estudiante"%>
<%@page import="Modelo.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MODIFICAR</title>
        <link href="css/Modificar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="contenedorPrincipal">
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
                        <a href="Controlador?accion=eliminar">Eliminar</a>
                    </li>
                </ul>
            </div>

            <h1 class="titulo">Modificar Estudiante: </h1>
            <form class="formulario" action="Controlador">
                <h3>Ingresar ID del estudiante:</h3>
                <div class="contenido">
                    <div>
                        <label>ID: </label>
                        <input type="number" name="id" placeholder="Escribe el ID: ">
                    </div>
                    <div>
                        <input type="submit" name="accion" value="buscar">
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
            <form class="formulario" action="Controlador">
                <h3>Datos del Estudiante</h3>
                <div class="contenido">
                    <div>
                        <label>ID: </label>
                        <input type="number" name="idestu" placeholder="ID" value="<%= id%>">
                        <label>Nombres: </label>
                        <input type="text" name="nombre" placeholder="Escriba su nombre" value=<%= nom%>>
                        <label>Apellidos: </label>
                        <input type="text" name="apellido" placeholder="Escriba sus apellidos" value=<%= apel%>>
                    </div>

                    <div>
                        <label>Carrera: </label>
                        <select name="carrera" required>
                            <option value="Administracion De Empresas">Administración de Empresas</option>
                            <option value="Arquitectura">Arquitectura</option>
                            <option value="Artes Y Diseno">Artes y Diseño</option>
                            <option value="Contaduria">Contaduría</option>
                            <option value="Comunicacion">Comunicación</option>
                            <option value="Derecho Y Criminologia">Derecho y Criminología</option>
                            <option value="Diseno Grafico">Diseño Gráfico</option>
                            <option value="Enfermeria">Enfermería</option>
                            <option value="Economia">Economía</option>
                            <option value="Educacion">Educación</option>
                            <option value="Filosofia">Filosofía</option>
                            <option value="Fisica">Física</option>
                            <option value="Gastronomia">Gastronomía</option>
                            <option value="Geologia">Geología</option>
                            <option value="Hoteleria Y Turismo">Hotelería y Turismo</option>
                            <option value="Ingenieria Ambiental">Ingenieria Ambiental</option>
                            <option value="Ingenieria De Sistemas">Ingeniería de Sistemas</option>
                            <option value="Ingenieria Industrial">Ingeniería Industrail</option>
                            <option value="Ingenieria Informatica">Ingeniería Informática</option>
                            <option value="Medicina">Medicina</option>
                            <option value="Marketing">Marketing</option>
                            <option value="Musica">Música</option>
                            <option value="Periodismo">Periodismo</option>
                            <option value="Psicologia">Psicología</option>
                            <option selected value="<%= carre%>"><%= carre%></option>
                        </select> 
                    </div>
                    <div>
                        <label>Semestre: </label>
                        <input type="number" name="semestre" placeholder="semestre:" value=<%= mestre%>>
                    </div>

                    <div>
                        <label>Correo: </label>
                        <input type="email" name="correo" placeholder="Example@gmail.com:" value=<%= corre%>>
                    </div>

                    <div>
                        <input type="submit" name="accion" value="Modificar">
                    </div>
                </div>
            </form>
            <%
                        mensaje = "Se ha encontrado al Estudiante";
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
