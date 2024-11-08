package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servicio.ActorService;
import beans.Actor;

import java.io.IOException;
import java.util.List;

@WebServlet("/actorServlet")
public class ActorServlet extends HttpServlet {
    private ActorService actorService = new ActorService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idPelicula = Integer.parseInt(request.getParameter("idPelicula"));
        List<Actor> actores = actorService.getActoresByPelicula(idPelicula);
        request.setAttribute("actores", actores);
        request.getRequestDispatcher("listaActores.jsp").forward(request, response);
    }
}
