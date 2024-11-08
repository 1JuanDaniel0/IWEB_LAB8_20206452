package services;

import DAO.ActorDAO;
import beans.Actor;

import java.util.List;

public class ActorService {
    private ActorDAO actorDAO = new ActorDAO();

    public List<Actor> getActoresByPelicula(int idPelicula) {
        return actorDAO.getActoresByPelicula(idPelicula);
    }

    public void createActor(Actor actor) {
        actorDAO.createActor(actor);
    }
}
