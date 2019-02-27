<%@ include file="cabecera.jsp" %>
<%@ include file="lateral.jsp" %>



<%  Consultas ent = new Consultas();
    ResultSet entradas = ent.conseguirUltimasEntradas();
%>


<div class="principal">
    <h1 id="tmain">Ultimas entradas..</h1>
    </br>

    <% while (entradas.next()) {
            String titulo = entradas.getString("titulo");
            String descri = entradas.getString("descripcion");
            String nomb_cat = entradas.getString("nombre");

    %>

    <article class="entrada">
        <a href="#">
            <h2>&rarr; <% out.print(titulo);%><small id="hash">#<% out.print(nomb_cat);%></small></h2>
            <p><% out.print(descri.substring(0, 250));%> </p>
        </a>
    </article>
    <% }%>


</div>

<%@ include file="pie.jsp" %>

