<%@ include file="cabecera.jsp" %>
<%@ include file="lateral.jsp" %>

<div class="principal">
    <% Consultas kon = new Consultas();
        String id_cat = request.getParameter("id");
        //ResultSet entradas = conn.entradasFiltro(id_cat);
        ;
    %>
    <p id="cattit">$ &rarr; <% out.print(kon.getNombreCategoria(id_cat)); %></p>
    <% Consultas onk = new Consultas();
        ResultSet filtro = onk.entradasFiltro(id_cat);
    %>

    <% while (filtro.next()) {
            String titulo = filtro.getString("titulo");
            String descri = filtro.getString("descripcion");
    %>

    <article class="entrada">
        <a href="#">
            <h2><% out.print(titulo);%></h2>
            <p><% out.print(descri.substring(0, 250));%> </p>
        </a>
    </article>
    <% }%>


</div>
<%@ include file="pie.jsp" %>
