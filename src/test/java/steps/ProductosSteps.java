package steps;

import io.cucumber.java.en.And;
import modelos.Producto;
import org.junit.jupiter.api.Assertions;

import java.util.Arrays;

public class ProductosSteps {
    private final World world;

    public ProductosSteps(World world) {
        this.world = world;
    }

    @And("Se verifica que el producto contenga la etiqueta {string}")
    public void verificarEtiqueta(String etiqueta) {
        final var producto = world.response.as(Producto.class);
        Assertions.assertTrue(producto.etiquetas().contains(etiqueta));
    }

    @And("Se verifica que existan {int} Productos")
    public void verificarTamLista(int tamEsperado) {
        final var productos = Arrays.asList(world.response.as(Producto[].class));
        Assertions.assertEquals(tamEsperado, productos.size());
    }
}
