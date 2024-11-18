Feature: Visualización de la sección Hero y Botón Call-to-Action

    Como usuario interesado en la página, quiero ver un encabezado visual atractivo y un botón claro para tomar acción,
    para entender rápidamente el valor de la oferta y tomar una decisión.

    Scenario: Visualización correcta de la sección Hero y botón Call-to-Action
    Dado que un usuario busque "Ayni" por primera vez en su buscador
    Cuando acceda a la landing page
    Entonces se muestra una imagen o video llamativo en la parte superior (sección hero)
    Y el mensaje de valor claro es visible
    Y un botón de call-to-action que invita a acceder a la aplicación web y descargar la aplicación móvil es visible

    Scenario: Error en la carga de la sección Hero
    Dado que un usuario ingresa a la landing page
    Cuando la sección hero no carga correctamente debido a un fallo técnico
    Entonces el usuario ve un mensaje de error indicando que hubo un problema al cargar la sección hero
    O ve un área vacía en lugar del contenido esperado
    Y el usuario puede sentirse confundido o desconfiado