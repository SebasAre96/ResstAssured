package modelos;

public class Animal {
    private int id;
    private String nombre;
    private String tipo;
    private int edad;
    private double peso;
    private String genero;
    private Amo amo;

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public int getEdad() {
        return edad;
    }

    public double getPeso() {
        return peso;
    }

    public String getGenero() {
        return genero;
    }

    public Amo getAmo() {
        return amo;
    }
}
