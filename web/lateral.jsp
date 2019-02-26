<%@ page import="java.io.*" %>
<aside id="sidebar">

    <div class="bloque">  <%

        HttpSession objSesion = request.getSession(false);
        String id = (String) objSesion.getAttribute("user_nombre");
        String ape = (String) objSesion.getAttribute("user_apellido");
        String err_log = (String) objSesion.getAttribute("err_login");

        if (err_log != null) {
            out.print(err_log);
        }

        if (id != null) {
            String nombre = "$~" + " " + id + "@" + ape;
            //out.println("" + id + " " + ape);
%>
        <p class="us_login"><%= nombre%></p>
        <a href="crear_entrada.jsp" class="btn">~$ Crear entrada</a>
        <a href="mis-datos.jsp" class="btn">~$ Mis datos</a>
        <a href="crear_categoria.jsp" class="btn">~$ Crear categoría</a>
        <a href="cerrar.jsp" class="btn">~$  Cerrar Sesion </a>

        <%
            }
        %>
    </div>

    <% if (id == null) { %>

    <div class="bloque">
        <h3>Identificate</h3>
        <form action="login.jsp" method="POST">
            <label for="email">Email</label>
            <input name="email" type="text">
            <label for="pas">Contraseña</label>
            <input name="pass" type="password">
            <input name="submit" type="submit" value="Ingresar">
        </form>
    </div>

    <div class="bloque">
        <h3>Registrate</h3>

        <form action="registros.jsp" method="POST">
            <label for="nombre">Nombre</label>
            <input name="nombre" type="text">
            <label for="apellido">Apellido</label>
            <input name="apellido" type="text">
            <label for="text">Email</label>
            <input name="email" type="text">
            <label for="password">Contraseña</label>
            <input name="pass" type="password">
            <input name="submit" type="submit" value="Registrate">
            </br>
            <%
                String usuario = (String) objSesion.getAttribute("error");
                String completado = (String) objSesion.getAttribute("completado");

                if (usuario != null) {
                    out.println("Error: " + usuario);
                }
                if (completado != null) {
                    out.println(completado);
                    objSesion.removeAttribute("completado");
                }
            %>
        </form>
        <% }%>
    </div>
</aside>