<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Películas</title>
</head>
<body>
<h1>Lista de Películas</h1>
<form action="peliculaServlet" method="get">
    <input type="text" name="search" placeholder="Buscar película...">
    <input type="submit" value="Buscar">
</form>
<table border="1">
    <tr>
        <th>Título</th>
        <th>Director</th>
        <th>Año Publicación</th>
        <th>Rating</th>
        <th>BoxOffice</th>
        <th>Género</th>
        <th>Actores</th>
        <th>Acciones</th>
    </tr>
    <c:forEach var="pelicula" items="${peliculas}">
        <tr>
            <td><a href="peliculaServlet?action=detalle&idPelicula=${pelicula.idPelicula}">${pelicula.titulo}</a></td>
            <td>${pelicula.director}</td>
            <td>${pelicula.anoPublicacion}</td>
            <td>${pelicula.rating}/10</td>
            <td>$${pelicula.boxOffice}</td>
            <td>${pelicula.genero.nombre}</td>
            <td><a href="actorServlet?idPelicula=${pelicula.idPelicula}">Ver actores</a></td>
            <td><a href="peliculaServlet?action=eliminar&idPelicula=${pelicula.idPelicula}" onclick="return confirm('¿Estás seguro de que deseas eliminar esta película?');">Eliminar</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
