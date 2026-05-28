
package org.herberthcuyuch.model.conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    // String de conexion : URL, USER, PASSWORD -> Static
    // URL : Driver, host: IP, db, config..
    private static final String URL = "jdbc:mysql://localhost:3306/hoteldb_in4cm?serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "Herberth141718";
    
    public static Connection conectar(){
        Connection conexion = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            
            conexion = DriverManager.getConnection(URL, USER, PASSWORD);    
        } catch ( ClassNotFoundException e) {
            System.out.println("ERROR: no hay drivers   ");
        } catch ( SQLException ex ) {            
            System.out.println("ERROR: no se pudo conectar a la DB " + ex.getMessage());        
        }                       
        return conexion;
    }
}
