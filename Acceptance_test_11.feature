Feature: Realización de pedidos de productos agrícolas

  Como comercializador, quiero poder realizar pedidos de productos agrícolas,
  para poder realizar las entregas a tiempo y satisfacer la demanda de mis clientes.

  Scenario: Comercializador realiza un pedido de productos exitosamente
    Given que el comercializador ha explorado los productos disponibles
    And ha seleccionado los productos que desea pedir
    When el comercializador confirma el pedido y especifica las cantidades requeridas
    Then el sistema registra el pedido exitosamente
    And el comercializador recibe una notificación sobre el proceso y la fecha estimada de entrega

  Scenario: Comercializador intenta realizar un pedido con información dudosa o errónea
    Given que el comercializador ha seleccionado un producto para realizar un pedido
    When ingresa los datos requeridos para el pedido pero son inválidos o incompletos
    Then el sistema no ejecuta la compra
    And muestra un mensaje de error indicando que los datos son inválidos y deben corregirse para continuar
