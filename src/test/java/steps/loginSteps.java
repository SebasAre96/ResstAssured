package steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import modelos.Usuario;
import org.junit.jupiter.api.Assertions;

public class loginSteps {
    private final World world;

    public loginSteps(World world) {
        this.world = world;
    }

    @Given("")
    public void hola() {
    }

    @And("Se verifica que el email del usuario sea {string}")
    public void verificarEmail(String emailEsperado) {
        final var usuario = world.response.as(Usuario.class);
        Assertions.assertEquals(emailEsperado, usuario.email());
    }
}
