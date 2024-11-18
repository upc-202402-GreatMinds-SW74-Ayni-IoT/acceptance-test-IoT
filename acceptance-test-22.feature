Feature: Autenticación de usuarios

  Como desarrollador, quiero implementar autenticación de usuarios a través de una API,
  para que pueda estar disponible el inicio de sesión en la aplicación web o móvil.

  Background:
    Given el endpoint “http://localhost:%d/api/v1/users” está disponible

  Scenario: Usuario accede con credenciales válidas
    Given que un usuario ha ingresado sus credenciales correctas
    When realiza una solicitud de autenticación con valores:
      """
      {
        "email": "juan123@gmail.com",
        "password": "contraseña567"
      }
      """
    Then el sistema debería retornar un token de acceso válido
    And el estado de la respuesta debe ser 200 OK

  Scenario: Se crea un nuevo usuario
    Given que un usuario quiere registrarse en la aplicación web o móvil
    When una solicitud de creación es enviada con los valores:
      """
      {
        "name": "Juan",
        "email": "juan123@gmail.com",
        "password": "contraseña567"
      }
      """
    Then se recibe un response con estado 200
    And se incluye un recurso de usuario en el cuerpo de la respuesta con los valores:
      """
      {
        "name": "Juan",
        "email": "juan123@gmail.com",
        "password": "contraseña567"
      }
      """
