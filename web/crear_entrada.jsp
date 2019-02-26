<%@ include file="cabecera.jsp" %>
<%@ include file="lateral.jsp" %>
<%@ include file="../assets/redireccion.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="conexion.Consultas"%>

<div class="principal">
    <%  Consultas conx = new Consultas();
        ResultSet gorias = conx.listarCategorias();
    %>
    <h2>&rarr;  Nuevo Post</h2>
    <form action="guardar-post.jsp" method="POST">
        <label for="titulo">Titulo de la entrada</label>
        <input type="text" name="titulo"/>


        <label for="catgoria">Categoria</label>
        <select name="categoria">
            <% while (gorias.next()) {
                    String cat = gorias.getString("nombre");
                    int catid = gorias.getInt("id");

            %>
            <option value="<%= catid%>"><%= cat%></option>
            <% }%>
        </select>

        <label for="desc">Contenido</label>
        <input id="longt" type="text" name="desc"/>
        <input type="submit" value="Guardar"/>
    </form>

</div>
<%@ include file="pie.jsp" %>
