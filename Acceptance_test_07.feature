Feature: Planificación de actividades agrícolas

    Como agricultor, quiero ingresar los datos correspondientes para la planificación de las actividades agrícolas,
    para organizar y gestionar de manera eficiente el ciclo de cultivo.

    Scenario: Agricultor planifica actividades para un ciclo de cultivo
    Dado que el agricultor ha ingresado a la sección de planificación
    Cuando el agricultor ingresa los datos relevantes para las actividades agrícolas, como fechas de siembra, riego y fertilización
    Entonces el sistema registra el plan
    Y los dispositivos IoT se configuran automáticamente para adaptarse al plan ingresado

    Scenario: Agricultor añade requisitos para el terreno de cultivo como parte de la planificación
    Dado que el agricultor empieza un nuevo plan de cultivo
    Cuando esté creando el plan y se encuentre en la página de añadir requisitos
    Entonces puede añadir rangos o cantidades necesarias de nutrientes para el terreno de cultivo, como nitrógeno, fósforo y potasio
    Y también puede eliminar requisitos si no son necesarios par