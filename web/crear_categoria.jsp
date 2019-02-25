<%@ include file="cabecera.jsp" %>
<%@ include file="lateral.jsp" %>
<%@ include file="../assets/redireccion.jsp" %>


<div class="principal">
    <h2 >Crear categoría</h2>
    <form action="guardar-categoria.jsp" method="POST">
        <label for="nombre">Nombre de la categoria</label>

        <p>Añade nuevas categorias para que los usuarios puedan usarlas al crear sus entradas.</p>
        <input type="text" name="nombre"/>
        <input type="submit" value="Guardar"/>
    </form>
</div>
<%@ include file="pie.jsp" %>
