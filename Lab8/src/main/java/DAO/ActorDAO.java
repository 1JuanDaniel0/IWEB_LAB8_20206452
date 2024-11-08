package DAO;

import beans.Actor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ActorDAO {
    public List<Actor> getActoresByPelicula(int idPelicula) {
        List<Actor> actores = new ArrayList<>();
        // Implementa la conexión a la base de datos y las consultas SQL aquí
        return actores;
    }

    public void createActor(Actor actor) {
        // Implementa la lógica para agregar un nuevo actor en la base de datos
    }
}
