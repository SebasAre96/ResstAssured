Feature: Animal

  Background:
    Given Se prepara el request

  Scenario: Obtener todos los animales
    Given Se usa la URL de "animales"
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Obtener un solo animal
    Given Se usa la URL de "animales/5"
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms
    And Se hace el schema validation usando el siguiente schema "src/test/resources/schemas/animal.json"
    And Se verifica que el id=5

  Scenario: Eliminar un animal
    Given Se usa la URL de "animales/5"
    When Se llama al metodo "DELETE"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Buscar un Animal
    Given Se usa la URL de "animales"
    And Se agrega el query parameter "nombre"="Leo"
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Ordenar animales
    Given Se usa la URL de "animales"
    And Se agregan los siguientes query params:
      | sortBy | peso |
      | order  | asc  |
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Filtrar animales
    Given Se usa la URL de "animales"
    And Se agregan los siguientes query params:
      | filterBy | tipo    |
      | value    | cautivo |
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Crear un Animal
    Given Se usa la URL de "animales"
    And Se agrega el siguiente payload:
    """
        {
            "nombre": "Sebastian",
            "tipo": "domestico",
            "edad": 29,
            "peso": 42.3,
            "genero": "macho",
            "amo": {
                  "nombre": "Dovie",
                  "apellido": "McLaughlin",
                  "correo": "Dovie_McLaughlin42@hotmail.com",
                  "edad": 52,
                  "pais": "Paraguay"
            }
        }
    """
    When Se llama al metodo "POST"
    Then Se verifica que el status code sea 201
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Actualizar un Animal
    Given Se usa la URL de "animales/5"
    And Se agrega el siguiente payload:
    """
    {
            "nombre": "Sebastian",
            "tipo": "salvaje",
            "edad": 29,
            "peso": 75.5,
            "genero": "macho",
            "amo": {
                  "nombre": "Dovie",
                  "apellido": "McLaughlin",
                  "correo": "Dovie_McLaughlin42@hotmail.com",
                  "edad": 80,
                  "pais": "Argentina"
            }
        }
    """
    When Se llama al metodo "PUT"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms

  Scenario: Actualizar parcialmente un Animal
    Given Se usa la URL de "animales/5"
    And Se agrega el siguiente payload:
    """
          {
            "nombre": "Super Sebastian",
            "tipo": "salvaje",
            "edad": 39,
            "peso": 50,
            "genero": "macho"
          }
    """
    When Se llama al metodo "PATCH"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 1000 ms
