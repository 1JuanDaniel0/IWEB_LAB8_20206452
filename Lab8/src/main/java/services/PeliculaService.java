package services;

import DAO.PeliculaDAO;
import beans.Pelicula;

import java.util.List;

public class PeliculaService {
    private PeliculaDAO peliculaDAO = new PeliculaDAO();

    public List<Pelicula> getAllPeliculas() {
        return peliculaDAO.getAllPeliculas();
    }

    public Pelicula getPeliculaById(int idPelicula) {
        return peliculaDAO.getPeliculaById(idPelicula);
    }

    public void deletePelicula(int idPelicula) {
        peliculaDAO.deletePelicula(idPelicula);
    }
}
