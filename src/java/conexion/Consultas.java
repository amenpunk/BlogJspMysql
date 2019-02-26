package conexion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Consultas extends conexion {

    public conexion conc = new conexion();
    public Connection conn = conc.getConexion();

    public ResultSet listarCategorias() throws SQLException {
        Statement st = conn.createStatement();
        String query = "SELECT * FROM categorias";
        ResultSet rs = st.executeQuery(query);
        return rs;
    }

    public ResultSet conseguirUltimasEntradas() throws SQLException {
        String query = "SELECT e.*,c.* from entradas e INNER JOIN categorias c ON e.categoria_id = c.id  ORDER BY e.id DESC LIMIT 4";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);
        return rs;
    }

    public void ingresarCategoria(String nombre) throws SQLException {
        String query = "insert into categorias(nombre) values('" + nombre + "' )";
        Statement st = conn.createStatement();
        st.executeUpdate(query);
    }

    public void ingresarPost(int user_id, int cat_id, String titulo, String descrip) throws SQLException {
        String query = "INSERT INTO entradas(usuario_id,categoria_id,titulo,descripcion,fecha) values('" + user_id + "','" + cat_id + "','" + titulo + "','" + descrip + "',01/01/2018)";
        Statement st = conn.createStatement();
        st.executeUpdate(query);
    }

}
