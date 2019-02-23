<%@page import="java.sql.Statement"%>
<%@page import="conexion.conexion"%>
<%
    conexion conn = new conexion();
    if (request.getParameter("submit") != null) {
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fecha = request.getParameter("date");

    } else {
        response.sendRedirect("index.jsp");
    }


%>