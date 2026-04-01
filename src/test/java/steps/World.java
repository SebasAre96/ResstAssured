package steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.module.jsv.JsonSchemaValidator;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import modelos.Mensaje;
import org.junit.jupiter.api.Assertions;
import utilities.RequestFilter;

import java.io.File;
import java.util.Map;

import static org.hamcrest.Matchers.lessThan;

public class World {
    RequestSpecification request;
    Response response;

    public RequestSpecification buildRequestSpecification() {
        return new RequestSpecBuilder()
                .addFilter(new RequestFilter()) //Filter
                .setBaseUri("http://127.0.0.1:3000") //base url
                .setContentType(ContentType.JSON) //request content type
                .build();
    }

    @Given("Se prepara el request")
    public void prepararElRequest() {
        request = RestAssured.given().spec(buildRequestSpecification());
    }

    @Given("Se usa la URL de {string}")
    public void asignarUrl(String url) {
        request.basePath(url);
    }

    @When("Se llama al metodo {string}")
    public void llamarMetodo(String metodo) {
        response = request.request(metodo);
    }

    @Then("Se verifica que el status code sea {int}")
    public void verificarStatusCode(int statusCode) {
        response.then().statusCode(statusCode);
    }

    @And("Se verifica que el response time sea menor a {int} ms")
    public void verificarResponseTime(long responseTimeMax) {
        response.then().time(lessThan(responseTimeMax));
    }

    @And("Se agrega el query parameter {string}={string}")
    public void agregarQueryParam(String key, String value) {
        request.queryParam(key, value);
    }

    @And("Se agregan los siguientes query params:")
    public void agregarQueryParams(Map<String, String> map) {
        request.queryParams(map);
    }

    @And("Se agrega el siguiente payload:")
    public void agregarRequestBody(String docString) {
        request.body(docString);
    }

    @And("Se hace el schema validation usando el siguiente schema {string}")
    public void hacerSchemaValidation(String ruta) {
        response.then().body(JsonSchemaValidator.matchesJsonSchema(new File(ruta)));
    }

    @And("Se verifica el mensaje {string}")
    public void verificarMensaje(String mensajeEsperado) {
        final var mensaje = response.as(Mensaje.class);
        Assertions.assertEquals(mensajeEsperado, mensaje.valor());
    }
}
