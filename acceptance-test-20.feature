Feature: Obtención de productos en venta relacionados a cultivos

  Como desarrollador, quiero obtener la información de productos (Products) relacionados a cultivos (Crops) mediante una API,
  para que pueda estar disponible en la aplicación web o móvil.

  Scenario: El usuario quiere ver todos los cultivos relacionados con un producto
    Given un producto existe con "id": 1
    And un recurso Cultivo existe con "productId": 1
    When el usuario realiza una solicitud para obtener los cultivos relacionados al producto con "id": 1
    Then la respuesta se proporciona con el estado 200
    And se incluye un recurso de producto en el cuerpo de la respuesta con los valores:
      """
      {
        "id": 1,
        "name": "Patata",
        "sotobosque": true,
        "fertilizar": true,
        "oxigenar": true,
        "línea": true,
        "agujero": true,
        "regado": 50,
        "limpieza de plagas": 90,
        "productId": 1
      }
      """

  Scenario: El usuario quiere ver todos los cultivos relacionados con un producto pero los cultivos no existen
    Given que existe un recurso de producto con "id": 1
    And un recurso Cultivo con "cropId": 25 no existe
    When el usuario realiza una solicitud para obtener los cultivos relacionados al producto con "id": 1
    Then la respuesta se proporciona con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta con los valores:
      """
      {
        "error": "404 no existe"
      }
      """
