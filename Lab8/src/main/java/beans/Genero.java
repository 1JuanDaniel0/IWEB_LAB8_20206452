package beans;

public class Genero {
    private int idGenero;
    private String nombre;

    // Constructor sin argumentos (necesario para JavaBeans)
    public Genero() {}

    // Getters y Setters
    public int getIdGenero() { return idGenero; }
    public void setIdGenero(int idGenero) { this.idGenero = idGenero; }
    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }
}