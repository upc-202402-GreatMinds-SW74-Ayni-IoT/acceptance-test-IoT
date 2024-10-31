Feature: Inicio de sesión en la aplicación

  Como usuario, quiero iniciar sesión para poder ingresar a mi cuenta
  y acceder a las funcionalidades de la aplicación.

  Scenario: Usuario inicia sesión exitosamente
    Given que el usuario ha registrado su cuenta previamente
    When ingresa su dirección de correo electrónico y contraseña válidas
    Then se le permite ingresar a su cuenta
    And puede acceder a las funcionalidades de la aplicación

  Scenario: Usuario no inicia sesión debido a credenciales inválidas
    Given que el usuario ha registrado su cuenta previamente
    When ingresa un correo electrónico y/o contraseña inválidos
    Then no se le permitirá ingresar a la aplicación web o móvil
    And se muestra un mensaje recomendando ingresar credenciales válidas
