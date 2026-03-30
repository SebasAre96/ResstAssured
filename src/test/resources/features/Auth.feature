Feature: Authorization

  Background:
    Given se prepara el request

  Scenario: Login
    Given Se usa la URL de "auth/login"
    And Se agrega el siguiente payload:
    """
    {
      "username: "standard_user",
      "password: "secret_blass_academy"
    }
    """
    When Se llama al metodo "POST"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms
