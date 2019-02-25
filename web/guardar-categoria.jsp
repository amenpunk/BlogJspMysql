<%@page import="conexion.Consultas"%>
<%
    String nombre = request.getParameter("nombre");
    Consultas ins = new Consultas();
    ins.ingresarCategoria(nombre);
    response.sendRedirect("index.jsp");
%>