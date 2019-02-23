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


            <!-- navegador -->
            <nav id="menu">
                <ul>
                    <li><a href="index.jsp">Categor�a 1</a></li>
                    <li><a href="index.jsp">Categoria 2</a></li>
                    <li><a href="index.jsp">Categoria 3</a></li>
                    <li><a href="index.jsp">Categoria 4</a></li>
                </ul>
                <%

                    HttpSession objSesion = request.getSession(false);
                    String id = (String) objSesion.getAttribute("user_nombre");
                    String ape = (String) objSesion.getAttribute("user_apellido");

                    if (id != null) {
                        out.println(id + " " + ape);

                    }
                %>
            </nav>
        </header>
        <div id="container">