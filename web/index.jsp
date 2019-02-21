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
            </nav>

            <div clas="clearfix"><div>

                    <!-- Entradas -->
                    <div id="container">
                        <aside id="sidebar"  class="clearfix">
                            <h3>Identificate</h3>
                            <form action="registro.jsp" method="POST">
                                <label for="text">Email</label>
                                <input name="email" type="text">
                                <label for="paswword">Contrase�a</label>
                                <input name="pass" type="password">
                                <input type="submit" value="Ingresar">
                            </form>
                        </aside>

                        <aside id="sidebar" class="clearfix">
                            <h3>Registrate</h3>
                            <form action="login.jsp" method="POST">
                                <label for="text">Email</label>
                                <input name="email" type="text">
                                <label for="paswword">Contrase�a</label>
                                <input name="pass" type="password">
                                <input type="submit" value="Registrate">
                            </form>
                        </aside>

                        <div class="principal">
                            <h1>Ultimas entradas..<h1>
                                    </br>

                                    <article class="entrda">
                                        <a href="#">
                                            <h2>Titulo de Entrada</h2>
                                            <p> Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est�ndar de las industrias desde el a�o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us� una galer�a de textos y los mezcl� de tal manera que logr� hacer un libro de textos especimen. No s�lo sobrevivi� 500 a�os, sino que tambien ingres� como texto de relleno en documentos electr�nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci�n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m�s recientemente con software de autoedici�n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. </p>
                                        </a>
                                    </article>

                                    <article class="entrda">
                                        <a href="#">
                                            <h2>Titulo de Entrada</h2>
                                            <p> Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est�ndar de las industrias desde el a�o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us� una galer�a de textos y los mezcl� de tal manera que logr� hacer un libro de textos especimen. No s�lo sobrevivi� 500 a�os, sino que tambien ingres� como texto de relleno en documentos electr�nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci�n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m�s recientemente con software de autoedici�n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. </p>
                                        </a>
                                    </article>

                                    <article class="entrda">
                                        <a href="#">
                                            <h2>Titulo de Entrada</h2>
                                            <p> Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est�ndar de las industrias desde el a�o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us� una galer�a de textos y los mezcl� de tal manera que logr� hacer un libro de textos especimen. No s�lo sobrevivi� 500 a�os, sino que tambien ingres� como texto de relleno en documentos electr�nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci�n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m�s recientemente con software de autoedici�n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. </p>
                                        </a>
                                    </article>

                                    <div id="ver-todas">
                                        <a href="">
                                            $ ----> Ver todas las entradas
                                        </a>
                                    </div>

                                    </div>
                                    </div>

                                    <footer id="pie" class="clearfix">
                                        <i>Este es un ejmplo sobre la utilizacion de jsp como backend para un blog con mysql</i>
                                        <p>Realizado por <i>Edgar Rolando Cosajay Campos &COPY; 2019</i> mas informacion de desarollo en  <a href="www.ecc-code.me">www.ecc-code.me</a></p>
                                    </footer>



                                    </body>
                                    </html>
