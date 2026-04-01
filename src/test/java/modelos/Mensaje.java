package modelos;

import com.fasterxml.jackson.annotation.JsonProperty;

public record Mensaje(
        @JsonProperty("mensaje") String valor
) {
}
