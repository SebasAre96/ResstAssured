Feature: Authorization

  Background:
    Given Se prepara el request

  @regression @smoke
  Scenario: Login
    Given Se usa la URL de "auth/login"
    And Se agrega el siguiente payload:
    """
      {
        "username": "standard_user",
        "password": "secret_blass_academy"
      }
    """
    When Se llama al metodo "POST"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms
    And Se hace el schema validation usando el siguiente schema "src/test/resources/schemas/login.json"
    And Se verifica que el email del usuario sea "standard-user@blass-academy.com"