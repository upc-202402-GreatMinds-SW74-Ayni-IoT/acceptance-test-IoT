Feature: Atención de pedidos para agricultores

  Como agricultor, deseo ver los pedidos que tengo de manera rápida y fácil en una pantalla,
  para poder atender o rechazar los pedidos de manera eficiente.

  Scenario: Atender un pedido de interés
    Given que el agricultor necesita vender sus productos
    When recibe un pedido dentro de la aplicación web o móvil
    Then puede acceder a la sección de "Mis pedidos" y visualizar el pedido recibido
    And selecciona el pedido para ver la opción de aceptar o rechazar
    And si decide aceptar el pedido, el sistema registra la aceptación y permite continuar con el proceso de venta

  Scenario: Rechazar un pedido
    Given que el agricultor desea rechazar un pedido porque no tiene el producto requerido
    When se encuentra en la sección "Mis pedidos" y presiona el botón “Rechazar” en el pedido específico
    Then el sistema elimina el pedido de la lista de pedidos del agricultor
    And el agricultor recibe una confirmación de que el pedido ha sido rechazado correctamente
