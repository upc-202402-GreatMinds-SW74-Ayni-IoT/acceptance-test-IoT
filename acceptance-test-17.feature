Feature: Monitoreo del estado del terreno de cultivo

  Como agricultor, quiero monitorear el estado del terreno de cultivo a través de un dashboard,
  para llevar un control eficiente y en tiempo real de las condiciones del terreno.

  Scenario: Monitoreo en tiempo real del estado del terreno
    Given que el agricultor desea conocer las condiciones actuales del terreno
    When accede al dashboard desde su dispositivo móvil o computadora
    Then el sistema muestra la información en tiempo real de los sensores, incluyendo datos como temperatura, humedad y conductividad del terreno.

  Scenario: Error al intentar visualizar la información de los sensores
    Given que el agricultor desea monitorear el estado actual del terreno mediante el dashboard
    When accede al dashboard y hay un fallo en la conexión con los sensores o un error en el sistema
    Then el sistema muestra un mensaje de error indicando que no se pueden obtener los datos de los sensores en ese momento
    And el sistema ofrece la opción de reintentar o contactar soporte técnico.
