Feature: Productos

  Background:
    Given se prepara el request

  Scenario: Obtener todos los Productos
    Given Se usa la URL de "productos"
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200

  Scenario: Obtener un solo Producto
    Given Se usa la URL de "productos/2"
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Eliminar un producto
    Given Se usa la URL de "productos/2"
    When Se llama al metodo "DELETE"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Buscar Productos
    Given Se usa la URL de "productos"
    And Se agregan los siguientes query params:
      | nombre | Pizza Congelada |
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Ordenar Productos
    Given Se usa la URL de "productos"
    And Se agregan los siguientes query params:
      | sortBy | precio |
      | order  | asc    |
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Filtrar Productos
    Given Se usa la URL de "productos"
    And Se agregan los siguientes query params:
      | perecible | true |
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms


