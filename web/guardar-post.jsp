<%@page import="conexion.Consultas"%>
<%
    String titulo = request.getParameter("titulo");
    String id_c = request.getParameter("categoria");
    // int id_cat = Integer.parseInt(id_c);
    String cont = request.getParameter("desc");
    HttpSession objSesion = request.getSession(false);
    String id = (String) objSesion.getAttribute("id_user");
    out.print(id + " " + id_c + " " + titulo + " " + cont);
    Consultas ins = new Consultas();
    ins.ingresarPost(id, id_c, titulo, cont);
    //out.print(id + id_c);
    response.sendRedirect("index.jsp");
%>