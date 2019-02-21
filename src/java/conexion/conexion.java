package conexion;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class conexion {

    Connection cnx = null;

    public conexion() {

    }

    public java.sql.Connection getConexion() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mysql://localhost/blog?user=root&password=");
        } catch (Exception e) {
            System.out.print("Error: " + e);
        }

        return cnx;
    }
}
