package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {

    Connection cnx = null;

    public conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mysql://localhost/blog?user=root&password=");
        } catch (ClassNotFoundException e) {
            System.err.println("Error: " + e);
        } catch (SQLException e) {
            System.err.println("Error: " + e);
        }
    }

    public java.sql.Connection getConexion() {
        return cnx;
    }

    public static void main(String[] args) {
        conexion conn = new conexion();
    }

}
