Feature: Obtención de un cultivo en específico

  Como desarrollador, quiero obtener la información de un cultivo en específico a través de una API,
  para que los usuarios puedan interactuar con la aplicación web o móvil de manera eficiente.

  Scenario: El usuario quiere ver un cultivo en concreto
    Given un recurso de cultivo con los valores:
      """
      {
        "id": 1,
        "nombre": "Patata",
        "maleza": true,
        "fertilizar": true,
        "oxigenar": true,
        "línea": true,
        "agujero": true,
        "regado": 50,
        "limpieza de plagas": 90,
        "productId": 1
      }
      """
  ya existe
    When se envía una solicitud GET con los valores "cropId": 1
    Then la respuesta se recibe con un estado 200
    And se incluye un recurso de cultivo en el cuerpo de la respuesta con los valores:
      """
      {
        "name": "Potato",
        "undergrowth": true,
        "fertilize": true,
        "oxygenate": true,
        "line": true,
        "hole": true,
        "watered": 50,
        "limpieza de plagas": 90,
        "productId": 1
      }
      """

  Scenario: El usuario quiere ver sus cultivos pero no existen
    Given un recurso de cultivo con "id": 25 no existe
    When se envía una solicitud GET con los valores "cropId": 25
    Then la respuesta se recibe con un estado 404
    And se incluye un mensaje en el cuerpo de la respuesta con los valores:
      """
      {
        "error": "404 doesnt exist"
      }
      """

