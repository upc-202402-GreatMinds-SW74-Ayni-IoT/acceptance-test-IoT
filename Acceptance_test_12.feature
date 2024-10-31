Feature: Creación y obtención de cultivos a través de la API

  Como desarrollador, quiero añadir y obtener cultivos a través de una API,
  para que los usuarios puedan interactuar con la aplicación web o móvil de manera eficiente.

  Background:
    Given que el endpoint "http://localhost:%d/api/v1/crops" está disponible

  Scenario: Creación de cultivo exitoso
    Given que el usuario proporciona la información completa del cultivo
    When realiza una solicitud POST al endpoint /crops con los valores del cultivo
    Then se recibe un response con status 200
    And un recurso "Crops" es incluido en el cuerpo del response con los valores del cultivo proporcionados

  Scenario: Obtención de cultivo exitoso
    Given que el usuario solicita información de un cultivo existente
    When realiza una solicitud GET al endpoint /crops/{id} con el ID del cultivo
    Then se recibe un response con status 200
    And un recurso "Crops" es incluido en el cuerpo del response con los valores del cultivo correspondiente
