<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Actores de la Película ${tituloPelicula}</title>
</head>
<body>
<h1>Actores de ${tituloPelicula}</h1>
<table border="1">
    <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Año de Nacimiento</th>
        <th>Premio Oscar</th>
    </tr>
    <c:forEach var="actor" items="${actores}">
        <tr>
            <td>${actor.nombre}</td>
            <td>${actor.apellido}</td>
            <td>${actor.anoNacimiento}</td>
            <td>${actor.premioOscar ? "Sí" : "No"}</td>
        </tr>
    </c:forEach>
</table>
<form action="crearActor.jsp" method="get">
    <input type="hidden" name="idPelicula" value="${idPelicula}">
    <input type="submit" value="Crear Actor">
</form>
<form action="peliculaServlet" method="get">
    <input type="submit" value="Volver a la Lista de Películas">
</form>
</body>
</html>
