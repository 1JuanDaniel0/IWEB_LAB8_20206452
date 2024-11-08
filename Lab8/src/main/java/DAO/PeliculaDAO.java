package DAO;

import beans.Pelicula;
import beans.Genero;
import beans.Actor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PeliculaDAO {
    public List<Pelicula> getAllPeliculas() {
        List<Pelicula> peliculas = new ArrayList<>();
        // Implementa la conexión a la base de datos y las consultas SQL aquí
        return peliculas;
    }

    public Pelicula getPeliculaById(int idPelicula) {
        // Implementa la lógica para obtener una película por su ID desde la base de datos
        return null;
    }

    public void deletePelicula(int idPelicula) {
        // Implementa la lógica para eliminar una película de la base de datos
    }
}
