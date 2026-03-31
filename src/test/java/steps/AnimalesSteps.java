package steps;

import io.cucumber.java.en.And;
import modelos.Animal;
import org.junit.jupiter.api.Assertions;

public class AnimalesSteps {
    private final World world;

    public AnimalesSteps(World world) {
        this.world = world;
    }

    @And("Se verifica que el id={int}")
    public void verificarId(int idEsperado) {
        final var animal = world.response.as(Animal.class);
        Assertions.assertEquals(idEsperado, animal.id());
    }
}

