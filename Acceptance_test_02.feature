Feature: Visualización de funcionalidades y planes

    Como usuario que busca más detalles sobre Ayni, quiero ver una descripción de las funcionalidades principales y los diferentes planes,
    para comparar y elegir el plan que mejor se ajuste a mis necesidades.

    Scenario: Visualización correcta de funcionalidades y planes
    Dado que el visitante desea usar la aplicación web o móvil web
    Cuando accede a la sección de funcionalidades y planes
    Entonces encuentra una lista clara de las características del producto o servicio
    Y se muestra una tabla comparativa con los planes disponibles
    Y los planes incluyen sus respectivos precios y beneficios

    Scenario: Error en la carga de la sección de funcionalidades y planes
    Dado que un usuario busca información detallada sobre los planes
    Cuando la sección de funcionalidades y planes no carga correctamente debido a un problema técnico
    Entonces el usuario ve un mensaje de error indicando que hubo un problema al cargar la información
    O la información que se muestra es incompleta
    Y esto impide que el usuario compare y elija un plan adecuadamente