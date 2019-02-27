<%@ include file="cabecera.jsp" %>
<%@ include file="lateral.jsp" %>
<%@ include file="../assets/redireccion.jsp" %>

<div class="principal">
    <h3>Actualizar mis datos</h3>
    <form action="actualizar-datos.jsp" method="POST">
        <label for="nombre">Nombre</label>
        <input name="nombre" type="text">
        <label for="apellido">Apellido</label>
        <input name="apellido" type="text">

        <input name="submit" type="submit" value="Actualizar">
    </form>

</div>
<%@ include file="pie.jsp" %>
