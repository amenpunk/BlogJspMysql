package conexion;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class conexion {

    public static void conn() {
        Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mysql://localhost/blog?user=root&password=");
            sta = cnx.createStatement();
            rs = sta.executeQuery("select * from usuarios");
        } catch (Exception e) {
            System.out.print("Error: " + e);
        }
    }
}
