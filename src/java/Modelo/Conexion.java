package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

public class Conexion {
    Connection con;
    ImageIcon IconWarning = new ImageIcon("src/Iconos/77_Essential_Icons_Warning.png");
    ImageIcon IconInfo = new ImageIcon("src/Iconos/77_Essential_Icons_Typing_Comment.png");

    public Connection getConnection() {
        String url = "jdbc:mysql://localhost:3306/registro";
        String user = "root";
        String pass = "";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url, user, pass);
        } catch(Exception e){
            JOptionPane.showMessageDialog(null, "Error en la conexion. "+e,
                "ADVERTENCIA", JOptionPane.WARNING_MESSAGE, IconWarning);
        } 
        return con;
    }
}
