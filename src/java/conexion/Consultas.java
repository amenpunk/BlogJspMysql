/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Neon
 */
public class Consultas extends conexion {

    public ResultSet listarCategorias() throws SQLException {
        conexion conc = new conexion();
        Connection conn = conc.getConexion();
        Statement st = conn.createStatement();
        String query = "SELECT * FROM categorias";
        ResultSet rs = st.executeQuery(query);
        return rs;
    }
}
