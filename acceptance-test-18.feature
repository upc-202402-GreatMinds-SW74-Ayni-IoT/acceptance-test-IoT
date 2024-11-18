Feature: Visualización de funcionalidades y planes

  Como usuario interesado en Ayni, quiero ver una descripción detallada de las funcionalidades principales y los diferentes planes,
  para comparar y elegir el plan que mejor se ajuste a mis necesidades.

  Scenario: Visualización de funcionalidades y planes
    Given que el visitante desea usar la aplicación web o móvil web
    When accede a la sección de funcionalidades y planes
    Then encuentra una lista clara de las características del producto/servicio
    And puede visualizar una tabla comparativa que muestra los planes disponibles junto con sus respectivos precios y beneficios.

  Scenario: Error en la carga de la sección de funcionalidades y planes
    Given que un usuario busca información detallada sobre los planes
    When la sección de funcionalidades y planes no carga correctamente debido a un problema técnico
    Then el usuario ve un mensaje de error o información incompleta
    And no puede comparar y elegir un plan adecuadamente.
