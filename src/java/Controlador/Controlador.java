package Controlador;

import Modelo.Estudiante;
import Modelo.EstudianteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {
    String insertar = "Vista/Insertar.jsp";
    String listar = "Vista/Listar.jsp";
    String consultar = "Vista/Consultar.jsp";
    String modificar = "Vista/Modificar.jsp";
    String eliminar = "Vista/Eliminar.jsp";
    
    Estudiante E = new Estudiante();
    EstudianteDAO DAO = new EstudianteDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        String mensaje = "";
        
        if("insertar".equals(action)){
            acceso = insertar;
        }
        else if("Agregar".equals(action)){
            String nom = request.getParameter("nombre");
            String apel = request.getParameter("apellido");
            String carre = request.getParameter("carrera");
            String corre = request.getParameter("correo");
            int mestre = Integer.parseInt((String) request.getParameter("semestre"));
            
            E.setNombre(nom);
            E.setApellido(apel);
            E.setCarrera(carre);
            E.setCorreo(corre);
            E.setSemestre(mestre);
            
            int r = DAO.Insertar(E);
            if(r == 0){
                mensaje = "Se ha agregado el Estudiante Exitosamente";
            }
            else{
                mensaje = "No se pudo agregar el Estudiante";
            }
            acceso = listar;
            request.setAttribute("mensajeVista1", mensaje);
        }
        else if("listar".equals(action)){
            acceso = listar;
        }
        else if("modificar".equals(action)){
            acceso = modificar;
        }
        else if("buscar".equals(action)){
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("mensajeVista", request.getParameter("id"));
            acceso = modificar;
        }
        else if("Modificar".equals(action)){
            int id = Integer.parseInt(request.getParameter("idestu"));
            String nom = request.getParameter("nombre");
            String apel = request.getParameter("apellido");
            String carre = request.getParameter("carrera");
            String corre = request.getParameter("correo");
            int mestre = Integer.parseInt((String) request.getParameter("semestre"));
            
            E.setId(id);
            E.setNombre(nom);
            E.setApellido(apel);
            E.setCarrera(carre);
            E.setCorreo(corre);
            E.setSemestre(mestre);
            
            System.out.println(id);
            
            int r = DAO.Actualizar(E);
            
            if(r == 0){
                mensaje = "Se ha Modificado el Estudiante Exitosamente";
            }
            else{
                mensaje = "No se pudo Modificar el Estudiante "+id;
            }
            acceso = listar;
            request.setAttribute("mensajeVista2", mensaje);
        }
        else if("consultar".equals(action)){
            acceso = consultar;
        }
        else if("Consultar".equals(action)){
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("mensajeVista", request.getParameter("id"));
            acceso = consultar;
        }
        else if("eliminar".equals(action)){
            acceso = eliminar;
        }
        else if("Eliminar".equals(action)){
            String id = request.getParameter("id");
            E.setId(Integer.parseInt(id));
            int r = DAO.Eliminar(E, id);
            if(r == 0){
                mensaje = "Se ha Eliminado el Estudiante Correctamente";
            }
            else{
                mensaje = "No se pudo Eliminar el Estudiante "+id;
            }
            acceso = listar;
            request.setAttribute("mensajeVista2", mensaje);
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        //vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
