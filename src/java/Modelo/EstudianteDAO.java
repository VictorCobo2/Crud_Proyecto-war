package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EstudianteDAO {
    Conexion conectar = new Conexion();
    Connection con;
    PreparedStatement pa;
    ResultSet rs;
    
    public List Listar(){
        List<Estudiante> datos = new ArrayList<>();
        String sql = "SELECT * FROM estudiante";
        
        try{
            con = conectar.getConnection();
            pa = con.prepareStatement(sql);
            rs = pa.executeQuery();
            while(rs.next()){
                Estudiante E = new Estudiante();
                E.setId(rs.getInt(1));
                E.setNombre(rs.getString(2));
                E.setApellido(rs.getString(3));
                E.setCarrera(rs.getString(4));
                E.setCorreo(rs.getString(5));
                E.setSemestre(rs.getInt(6));
                datos.add(E);
            }
        } catch(Exception e){
        }
        
        return datos;
    }
    
    public int Insertar(Estudiante E){
        int band = 0;
        
        String sql = "INSERT INTO estudiante (Nombre, Apellido, Carrera, Correo, Semestre ) VALUES(?,?,?,?,?)";
        
        try{
            con = conectar.getConnection();
            pa = con.prepareStatement(sql);
            pa.setString(1, E.getNombre());
            pa.setString(2, E.getApellido());
            pa.setString(3, E.getCarrera());
            pa.setString(4, E.getCorreo());
            pa.setInt(5, E.getSemestre());
            pa.executeUpdate();
        } catch(Exception e){
            band = 1;
        }
                
        return band;
    }
    
    public int Consultar (Estudiante E, String ID){
        int band = 0;
        String sql = "SELECT * FROM estudiante WHERE id ="+ID;
        try{
            con = conectar.getConnection();
            pa = con.prepareStatement(sql);
            rs = pa.executeQuery();
            while(rs.next()){
                E.setId(rs.getInt(1));
                E.setNombre(rs.getString(2));
                E.setApellido(rs.getString(3));
                E.setCarrera(rs.getString(4));
                E.setCorreo(rs.getString(5));
                E.setSemestre(rs.getInt(6));
            }
            
            if(E.getNombre() == null){
                band = 1;
            }
        } catch(Exception e){
            band = 1;
        }
        return band;
    }
    
    public int Actualizar(Estudiante E){
        int band = 0;
        String sql = "UPDATE estudiante SET Nombre= ? , Apellido= ? , Carrera= ? , Correo= ? , Semestre= ? where id= ?"; 
        
        try{
            con = conectar.getConnection();
            pa = con.prepareStatement(sql);
            pa.setString(1, E.getNombre());
            pa.setString(2, E.getApellido());
            pa.setString(3, E.getCarrera());
            pa.setString(4, E.getCorreo());
            pa.setInt(5, E.getSemestre());
            pa.setInt(6, E.getId());
            pa.executeUpdate();
        } catch (Exception e){
            band = 1;
        }
        return band;
    }
    
    public int Eliminar(Estudiante E, String ID){
        int band = 0;
        String sql = "DELETE FROM estudiante WHERE id ="+ID;
        try{
            con = conectar.getConnection();
            pa = con.prepareStatement(sql);
            pa.executeUpdate();
        } catch(Exception e){
            band = 1;
        }
        return band;
    }
}