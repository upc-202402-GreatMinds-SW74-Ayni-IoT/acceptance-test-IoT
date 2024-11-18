Feature: Redireccionamiento a la sección principal "Home"

    Como usuario del segmento productor o del segmento comerciante,
    deseo que luego de iniciar sesión me redirija a una sección "Home"
    para ver en esa pantalla mis actividades recientes.

    Scenario: Redireccionamiento exitoso a la pantalla "Home"
    Dado que el usuario se encuentra fuera de la aplicación web o móvil
    Cuando inicie sesión de manera correcta
    Entonces se le redirecciona a la pantalla de "Home"
    Y en la pantalla "Home" ve sus actividades recientes

    Scenario: Fallo en la redirección a "Home" por credenciales inválidas
    Dado que el usuario se encuentra fuera de la aplicación web o móvil
    Cuando inicie sesión con credenciales inválidas
    Entonces no le permitirá el redireccionamiento a "Home"
    Y verá un mensaje de error indicando que las credenciales son incorrectas

    Scenario: Fallo en la redirección a "Home" por error técnico
    Dado que el usuario se encuentra fuera de la aplicación web o móvil
    Cuando inicie sesión de manera correcta
    Pero ocurre un error técnico en el sistema
    Entonces no se le redirecciona a la pantalla de "Home"
    Y verá un mensaje de error indicando que hubo un problema al redirigirlo a la pantalla principal
