<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="conexion.conexion"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>


<%
    String error = "El correo ya exite";
    HttpSession sesion = request.getSession();
    if (request.getParameterMap().containsKey("submit")) {

        conexion conc = new conexion();
        Connection conn = conc.getConexion();

        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        Statement st = conn.createStatement();

        ResultSet rs = st.executeQuery("Select count(email) as total from usuarios where email = '" + email + "'");
        int total = 0;
        while (rs.next()) {
            total = rs.getInt("total");
            //out.print(total);
        }

        if (total == 1) {
            sesion.setAttribute("error", error);
            response.sendRedirect("index.jsp");
        } else {

            int i = st.executeUpdate("Insert into usuarios(nombre,apellidos,email,password) values('" + nombre + "','" + apellido + "','" + email + "','" + password + "')");
            out.print("welcome");
            sesion.removeAttribute("error");
            response.sendRedirect("index.jsp");
        }
    } else {

    }


%>