Feature: Sistemas de búsqueda y paginación en la sección "Mis compras"

  Como usuario que desea saber más sobre la filosofía de la empresa,
  quiero ver una explicación clara de la misión y visión de la empresa,
  para entender los valores y objetivos que guían su trabajo.

  Scenario: Visualización de misión y visión de la empresa
    Given que el usuario accede a la sección "Sobre nosotros"
    When visualiza el contenido de misión y visión de la empresa
    Then puede leer una explicación clara sobre los valores y objetivos de la empresa

  Scenario: Búsqueda de una compra específica en la sección "Mis compras"
    Given que el usuario desea encontrar una compra que realizó hace semanas
    When accede a la sección "Mis compras" y usa la barra de búsqueda
    Then el sistema muestra el producto específico en los resultados de búsqueda si coincide con el criterio ingresado

  Scenario: Navegación por paginación para encontrar una compra antigua
    Given que el usuario no puede encontrar el producto que compró hace unas semanas
    When utiliza los botones de paginación en la aplicación web o móvil
    Then puede navegar a la última página de productos en la sección "Mis compras"
    And encuentra el producto que estaba buscando en dicha página
