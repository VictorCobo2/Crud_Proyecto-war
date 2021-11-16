<%-- 
    Document   : Crear
    Created on : 13/05/2021, 01:45:25 PM
    Author     : AndrewSword
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSERTAR</title>
        <link href="css/Consultar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="contenedorPrincipal">
                        
            <div class="tablaPrincipal">
                <ul>
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

            <h1 class="titulo">Insertar Estudiante: </h1>
            <form class="formulario" action="Controlador">
                <h3>Introducir Datos del Estudiante</h3>
                <div class="contenido">
                    <div>
                        <label>Nombres: </label>
                        <input type="text" name="nombre" placeholder="Escriba su nombre">
                        <label>Apellidos: </label>
                        <input type="text" name="apellido" placeholder="Escriba sus apellidos">
                    </div>

                    <div>
                        <label>Carrera: </label>
                        <select name="carrera">
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
                            <option value="Ingenieria Industrial">Ingeniería Industrial</option>
                            <option value="Ingenieria Informatica">Ingeniería Informática</option>
                            <option value="Medicina">Medicina</option>
                            <option value="Marketing">Marketing</option>
                            <option value="Musica">Música</option>
                            <option value="Periodismo">Periodismo</option>
                            <option value="Psicologia">Psicología</option>
                        </select> 
                    </div>

                    <div>
                        <label>Semestre: </label>
                        <input type="number" name="semestre" placeholder="semestre:">
                    </div>
                    
                    <div>
                        <label>Correo: </label>
                        <input type="email" name="correo" placeholder="Example@gmail.com:">
                    </div>
                    
                    <div>
                        <input type="submit" name="accion" value="Agregar">
                    </div>
                </div>
            </form>

            <div>
                <footer>
                    <h2>Crud - Andrew Rincon - 752221</h2>
                    <h2> | HTML | CSS | JAVA | MYSQL | </h2>
                </footer>
            </div>
	</div>
    </body>
</html>
