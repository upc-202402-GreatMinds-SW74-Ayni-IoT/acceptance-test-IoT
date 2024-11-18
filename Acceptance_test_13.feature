Feature: Creación y obtención de productos agrícolas a través de la API

  Como desarrollador, quiero obtener y crear productos agrícolas a través de una API,
  para que los usuarios puedan acceder y crear registros de productos agrícolas en la aplicación web o móvil.

  Background:
    Given que el endpoint "http://localhost:%d/api/v1/products" está disponible

  Scenario: Obtención de un producto existente
    Given que el usuario solicita información de un producto agrícola existente
    When realiza una solicitud GET al endpoint /products/{id} con el ID del producto
    Then se recibe un response con status 200
    And un recurso "Products" es incluido en el cuerpo del response con los valores del producto correspondiente

  Scenario: Creación de un producto exitoso
    Given que se quiere añadir un nuevo producto agrícola
    When el usuario realiza una solicitud POST al endpoint /products con los valores del nuevo producto
    Then se recibe un response con status 200
    And el recurso "Products" es incluido en el cuerpo del response con los valores del producto creado
