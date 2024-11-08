package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servicio.PeliculaService;
import beans.Pelicula;

import java.io.IOException;
import java.util.List;

@WebServlet("/peliculaServlet")
public class PeliculaServlet extends HttpServlet {
    private PeliculaService peliculaService = new PeliculaService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            listarPeliculas(request, response);
        } else if (action.equals("eliminar")) {
            eliminarPelicula(request, response);
        }
    }

    private void listarPeliculas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pelicula> peliculas = peliculaService.getAllPeliculas();
        request.setAttribute("peliculas", peliculas);
        request.getRequestDispatcher("listaPeliculas.jsp").forward(request, response);
    }

    private void eliminarPelicula(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idPelicula = Integer.parseInt(request.getParameter("idPelicula"));
        peliculaService.deletePelicula(idPelicula);
        response.sendRedirect("peliculaServlet");
    }
}
