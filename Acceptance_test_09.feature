Feature: Inicio de sesión de usuario

    Como usuario, quiero iniciar sesión para poder ingresar a mi cuenta
    y acceder a las funcionalidades disponibles en la aplicación web o móvil.

    Scenario: Usuario inicia sesión correctamente
    Dado que el usuario ha registrado su cuenta previamente
    Cuando el usuario ingrese su dirección de correo electrónico y contraseña válidas
    Entonces se le permite ingresar a su cuenta
    Y accede a las funcionalidades disponibles en la aplicación

    Scenario: El usuario no inicia sesión por credenciales inválidas
    Dado que el usuario ha registrado su cuenta previamente
    Cuando ingrese una dirección de correo electrónico y/o contraseña inválidas
    Entonces no se le permitirá ingresar a la aplicación web o móvil
    Y se muestra un mensaje indicando que las credenciales ingresadas son incorrectas
    Y se recomienda ingresar credenciales válidas
