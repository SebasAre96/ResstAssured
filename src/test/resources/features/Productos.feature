Feature: Productos

  Background:
    Given Se prepara el request

  @regression @smoke
  Scenario: Obtener todos los Productos
    Given Se usa la URL de "productos"
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que existan 30 Productos

  @regression @smoke
  Scenario: Obtener un solo Producto
    Given Se usa la URL de "productos/2"
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms
    And Se hace el schema validation usando el siguiente schema "src/test/resources/schemas/productos.json"
    And Se verifica que el producto contenga la etiqueta "Moderno"

  @regression @smoke
  Scenario: Eliminar un producto
    Given Se usa la URL de "productos/2"
    When Se llama al metodo "DELETE"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms
    And Se verifica el mensaje "Producto con id 2 se ha eliminado satisfactoriamente"

  @regression
  Scenario: Buscar Productos
    Given Se usa la URL de "productos"
    And Se agregan los siguientes query params:
      | nombre | Pizza Congelada |
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms

  @regression
  Scenario: Ordenar Productos
    Given Se usa la URL de "productos"
    And Se agregan los siguientes query params:
      | sortBy | precio |
      | order  | asc    |
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms

  @regression
  Scenario: Filtrar Productos
    Given Se usa la URL de "productos"
    And Se agregan los siguientes query params:
      | perecible | true |
    When Se llama al metodo "GET"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms

  @regression
  Scenario: Crear un producto
    Given Se usa la URL de "productos"
    And Se agrega el siguiente payload:
    """
        {
        "nombre": "Blass",
        "precio": 18.775,
        "cantidad": 9,
        "peso": 9.648,
        "perecible": true,
        "volumen": 42.883,
        "criticas": [
            {
                "puntaje": 3.79,
                "comentario": "Tenderly braised lamb in a rich sesame seed and brussels sprouts sauce, served with a side of creamy garlic.",
                "correo": "Geraldine.Homenick91@yahoo.com",
                "usuario": "Geraldine_Homenick29"
            },
            {
                "puntaje": 2.26,
                "comentario": "Three crabs with french eschallots, dried chinese broccoli, kale, dried chinese broccoli and arrowroot. With a side of baked tomato, and your choice of olives or spelt.",
                "correo": "Kira.Ullrich77@hotmail.com",
                "usuario": "Kira_Ullrich"
            },
            {
                "puntaje": 2.84,
                "comentario": "Our bitter crocodile, slow-cooked to perfection, accompanied by steamed arugula and a rich, savory gravy.",
                "correo": "Jaqueline_Cummerata44@yahoo.com",
                "usuario": "Jaqueline_Cummerata59"
            },
            {
                "puntaje": 4.98,
                "comentario": "A special pink sultanas from Malta. To support the strong flavor it is sided with a tablespoon of lemon pepper.",
                "correo": "Adelia.Pacocha@gmail.com",
                "usuario": "Adelia_Pacocha79"
            },
            {
                "puntaje": 3.41,
                "comentario": "Our sweet lamb, slow-cooked to perfection, accompanied by steamed lettuce and a rich, savory gravy.",
                "correo": "Joanne.Larson13@hotmail.com",
                "usuario": "Joanne_Larson92"
            }
        ],
        "etiquetas": [
            "Soft",
            "Intelligent",
            "Elegant",
            "Electronic",
            "Incredible",
            "Small",
            "Handcrafted",
            "Licensed",
            "Oriental"
        ]
        }
    """
    When Se llama al metodo "POST"
    Then Se verifica que el status code sea 201
    And Se verifica que el response time sea menor a 2000 ms

  @regression
  Scenario: Editar un producto
    Given Se usa la URL de "productos/2"
    And Se agrega el siguiente payload:
    """
      {
        "nombre": "Blass",
        "precio": 18.775,
        "cantidad": 9,
        "peso": 9.648,
        "perecible": true,
        "volumen": 42.883,
        "criticas": [
            {
                "puntaje": 3.79,
                "comentario": "Tenderly braised lamb in a rich sesame seed and brussels sprouts sauce, served with a side of creamy garlic.",
                "correo": "Geraldine.Homenick91@yahoo.com",
                "usuario": "Geraldine_Homenick29"
            }
           ],
           "etiquetas": ["delicioso", "caro"]
      }
    """
    When Se llama al metodo "PUT"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms

  @regression
  Scenario: Actualizar parcialmente un Producto
    Given Se usa la URL de "productos/2"
    And Se agrega el siguiente payload:
    """
      {
        "nombre": "Blass",
        "precio": 18.775,
        "cantidad": 9,
        "peso": 9.648,
        "perecible": true,
        "volumen": 42.883
      }
    """
    When Se llama al metodo "PATCH"
    Then Se verifica que el status code sea 200
    And Se verifica que el response time sea menor a 2000 ms

