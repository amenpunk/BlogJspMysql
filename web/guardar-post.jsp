<%@page import="conexion.Consultas"%>
<%
    String titulo = request.getParameter("titulo");
    String id_c = request.getParameter("categoria");
    int id_cat = Integer.parseInt(id_c);
    String cont = request.getParameter("desc");
    HttpSession objSesion = request.getSession(false);
    int id = (int) objSesion.getAttribute("id_user");
    //out.print(id + " " + id_cat + " " + titulo + " " + cont);
    Consultas ins = new Consultas();
    ins.ingresarPost(id, id_cat, titulo, cont);
    response.sendRedirect("index.jsp");
%>