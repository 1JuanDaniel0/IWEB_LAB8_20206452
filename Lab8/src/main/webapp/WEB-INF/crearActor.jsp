<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Crear Actor</title>
</head>
<body>
<h1>Crear Nuevo Actor</h1>
<form action="actorServlet" method="post">
    <label>Nombre:</label> <input type="text" name="nombre" required><br>
    <label>Apellido:</label> <input type="text" name="apellido" required><br>
    <label>Año de Nacimiento:</label> <input type="number" name="anoNacimiento" required><br>
    <label>Premio Oscar:</label> <input type="checkbox" name="premioOscar"><br>
    <input type="hidden" name="idPelicula" value="${param.idPelicula}">
    <input type="submit" value="Guardar Actor">
</form>
<form action="listaActores.jsp" method="get">
    <input type="hidden" name="idPelicula" value="${param.idPelicula}">
    <input type="submit" value="Cancelar">
</form>
</body>
</html>
