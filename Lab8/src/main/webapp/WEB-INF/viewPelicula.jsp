<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Detalles de la Película ${pelicula.idPelicula}</title>
</head>
<body>
<h1>Detalles de la Película</h1>
<form action="peliculaServlet" method="post">
    <table border="1">
        <tr><th>Título</th><td><input type="text" name="titulo" value="${pelicula.titulo}"></td></tr>
        <tr><th>Director</th><td><input type="text" name="director" value="${pelicula.director}"></td></tr>
        <tr><th>Año Publicación</th><td><input type="number" name="anoPublicacion" value="${pelicula.anoPublicacion}"></td></tr>
        <tr><th>Rating</th><td><input type="number" name="rating" step="0.1" value="${pelicula.rating}"></td></tr>
        <tr><th>BoxOffice</th><td><input type="number" name="boxOffice" value="${pelicula.boxOffice}"></td></tr>
        <tr><th>Género</th><td>${pelicula.genero.nombre}</td></tr>
        <tr><th>Actores</th><td><a href="actorServlet?idPelicula=${pelicula.idPelicula}">Ver Actores</a></td></tr>
    </table>
    <input type="hidden" name="idPelicula" value="${pelicula.idPelicula}">
    <input type="submit" value="Guardar Cambios">
</form>
<form action="peliculaServlet" method="get">
    <input type="hidden" name="action" value="listar">
    <input type="submit" value="Volver a la Lista">
</form>
</body>
</html>
