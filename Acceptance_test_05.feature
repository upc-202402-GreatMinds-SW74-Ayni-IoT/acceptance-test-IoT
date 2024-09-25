Feature: Visualización de detalles del terreno de cultivo y fases de cosecha

    Como comercializador quiero ver cómo se manipuló la tierra de cultivo y el proceso de sus fases en tiempo real
    para saber si el producto es de buena calidad o no.

    Scenario: Comerciante se interesa por un cultivo al ver los detalles de sus fases de cultivo
    Dado que el comerciante se encuentra explorando la lista de cultivos en venta
    Cuando seleccione un cultivo y sea redirigido a la página de detalles del cultivo
    Entonces se le muestran los detalles del terreno de cultivo
    Y se muestra el proceso de las fases de cosecha en tiempo real
    Y se incluye la información brindada por los sensores, como humedad del suelo, fertilización y estado de las plantas

    Scenario: Comerciante no puede encontrar el producto deseado por falta de detalles
    Dado que el comerciante desea buscar un producto específico para comprar
    Cuando seleccione un cultivo de la lista y se muestre que no tuvo un buen cuidado del terreno
    Entonces descartará la compra del cultivo
    Y seguirá buscando en la lista hasta encontrar uno con detalles satisfactorios