<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Consultas"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./assets/main.css">
        <title>Simple Blog</title>
    </head>
    <body>

        <!-- logo -->
        <header>
            <div id="logo">
                <a href="index.jsp">
                    <image id="archlogo" src="./assets/logo.jpg"><h1> ~$ ARCHLINUX BLOG</h1>
                </a>
            </div>

            <%  Consultas con = new Consultas();
                ResultSet categorias = con.listarCategorias();

            %>
            <!-- navegador -->
            <nav id="menu">

                <ul>
                    <li ><a href="index.jsp">Categorias:</a></li>
                        <% while (categorias.next()) {
                                String cat = categorias.getString("nombre");
                                String id = categorias.getString("id");
                        %>
                    <li><a href="getCategoria.jsp?id=<%=id%>"><% out.print(cat); %></a></li>
                        <% }%>
                </ul>

            </nav>
        </header>
        <div id="container">