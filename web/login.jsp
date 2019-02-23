<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.conexion"%>

<%
    //inicar la sesion y la conexion a db
    //recoger datos del formulario
    String nombre = "";
    String apellido = "";
    if (request.getParameterMap().containsKey("submit")) {
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        conexion conc = new conexion();
        Connection conn = conc.getConexion();
        Statement st = conn.createStatement();

        ResultSet rs = st.executeQuery("Select nombre,apellidos,count(*) as total from usuarios where email ='" + email + "' and password ='" + pass + "'");
        int total = 0;
        while (rs.next()) {
            total = rs.getInt("total");
            nombre = rs.getString("nombre");
            apellido = rs.getString("apellidos");
            out.print(total);

        }
        if (total == 1) {
            HttpSession sesion = request.getSession();
            sesion.setAttribute("user_nombre", nombre);
            sesion.setAttribute("user_apellido", apellido);
            response.sendRedirect("index.jsp");

        }

    }
    //comprobar el usuario y la contraseña
    //utlizar los datos del usuario para crear una sesion

%>