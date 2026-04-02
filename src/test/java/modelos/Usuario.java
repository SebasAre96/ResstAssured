package modelos;

public record Usuario(
        int id,
        String usuario,
        String correo,
        String nombre,
        String apellido,
        int edad,
        String accessToken,
        String refreshToken

) {
}
