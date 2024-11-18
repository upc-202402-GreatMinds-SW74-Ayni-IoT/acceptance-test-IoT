Feature: Sistema de búsqueda y paginación en "Mis compras"

    Como usuario que desea saber más sobre la filosofía de la empresa, quiero ver una explicación clara de la misión y visión de la empresa,
    para entender los valores y objetivos que guían su trabajo.

    Scenario: Búsqueda de una compra específica en la sección "Mis compras"
    Dado que el usuario desea ver una compra que hizo hace semanas
    Cuando quiera buscarla en la sección de “Mis compras”
    Entonces podrá buscarla directamente utilizando una barra de búsqueda
    Y verá los resultados filtrados de manera precisa

    Scenario: Usuario encuentra una compra anterior usando la paginación
    Dado que el usuario no puede encontrar el producto que pidió hace unas semanas
    Cuando use la paginación mediante los botones de la aplicación web o móvil
    Entonces encuentra el producto que estaba buscando en la última página