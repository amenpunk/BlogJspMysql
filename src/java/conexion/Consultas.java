package conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Consultas extends conexion {

    public conexion conc = new conexion();
    public Connection conn = conc.getConexion();
    Statement st;

    public Consultas() throws SQLException {
        this.st = conn.createStatement();
    }

    public ResultSet listarCategorias() throws SQLException {
        String query = "SELECT * FROM categorias";
        ResultSet rs = st.executeQuery(query);
        return rs;
    }

    public ResultSet conseguirUltimasEntradas() throws SQLException {
        String query = "SELECT e.*,c.* from entradas e INNER JOIN categorias c ON e.categoria_id = c.id  ORDER BY e.id DESC LIMIT 4";
        ResultSet rs = st.executeQuery(query);
        return rs;
    }

    public void ingresarCategoria(String nombre) throws SQLException {
        String query = "insert into categorias(nombre) values('" + nombre + "' )";
        st.executeUpdate(query);
    }

    public void ingresarPost(String user_id, String cat_id, String titulo, String descrip) throws SQLException {
        try {
            String query = "INSERT INTO entradas(usuario_id,categoria_id,titulo,descripcion) values('" + user_id + "','" + cat_id + "','" + titulo + "','" + descrip + ")";
            st.executeUpdate(query);
        } catch (SQLException e) {
            System.err.println("Error: " + e);
        }

    }

    public int actulizarDatos(int id, String nombre, String apellido) throws SQLException {
        int cont = 9;
        String query = "UPDATE usuarios set nombre=?,apellidos=? WHERE id=" + id;
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, nombre);
        ps.setString(2, apellido);
        int i = ps.executeUpdate();
        if (i != 0) {
            cont = 1;
        }
        return cont;
    }

    public String getNombreCategoria(String id) throws SQLException {
        String nombre = "";
        String query = "SELECT nombre FROM categorias where id =" + id;
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            nombre = rs.getString("nombre");
        }
        return nombre;
    }

    public ResultSet entradasFiltro(String id_cat) throws SQLException {
        String query = "SELECT * FROM entradas where categoria_id =" + id_cat;
        ResultSet rs = st.executeQuery(query);
        return rs;
    }

}
