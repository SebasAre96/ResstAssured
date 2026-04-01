package modelos;

public record Usuario(
        int id,
        String usuario,
        String email,
        String nombre,
        String apellido,
        int edad,
        String accessToken,
        String refreshToken

) {
}
