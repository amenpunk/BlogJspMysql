<%@ page import="java.io.*" %>
<%@page import="conexion.Consultas"%>
<%
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    HttpSession objSesion = request.getSession(false);
    String id = (String) objSesion.getAttribute("id_user");
    int id_usr = Integer.parseInt(id);
    Consultas conc = new Consultas();
    int res = conc.actulizarDatos(id_usr, nombre, apellido);
    if (res == 1) {
%><script>alert("Registro Actualizado");</script>
<%
        objSesion.setAttribute("user_nombre", nombre);
        objSesion.setAttribute("user_apellido", apellido);
        response.sendRedirect("index.jsp");
    }
%>
