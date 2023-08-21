# Ejercicio de diseño de base de datos, consultas SQL y API

Este README proporciona una descripción del ejercicio de diseño de base de datos (DER) y las consultas SQL correspondientes, así como un codigo python relacionada con APIs.

## Descripción del ejercicio
El ejercicio se centra en diseñar una base de datos para un modelo de negocio de comercio electrónico y responder a preguntas mediante consultas SQL. Se tienen cuatro entidades clave: Customer, Item, Category y Order, y una entidad adicional llamada ItemEndOfDay.

## Estructura del repositorio
DER.jpg: Imagen con el Diseño Entidad Relación (DER).  
create_tables.sql: Script DDL para la creación de las tablas en la base de datos.  
respuestas_negocio.sql: Consultas SQL para responder a las preguntas planteadas sobre el modelo de negocio.  
Ayrton Lorente - Ejercicio tecnico - Accenture.ipynb: Codigo Python para el análisis de la API de MercadoLibre

## Diseño del DER
Para abordar el modelo de negocio, diseñamos un DER que incluye las siguientes entidades:

Customer: Atributos como customer_id, email, nombre, apellido, etc.  
Item: Representa productos en el marketplace. Incluye item_id, name, status, etc. Debido a esta parte de la consigna "Mediante el estado del ítem o fecha de baja se puede detectar los ítems activos del marketplace." se elige optar solo por el campo status para detectar los items activos. Tambien se crea un indice en la columna status, esto acelerara las consultas que involucran esta columna, permitiendo búsquedas y filtrados más eficientes en nuestra base de datos.  
Category: Descripción de las categorías, incluye category_id, description y path.  
Order: Registra transacciones de compra, incluye order_id, item_id, customer_id, total_amount, etc.  
ItemEndOfDay: Contiene el precio y estado de los items a fin del día.

## Respuestas a las preguntas
El archivo respuestas_negocio.sql contiene consultas SQL para responder a los ejercicios 1, 2 y 3.

### Inserts de prueba
El archivo Inserts de prueba.sql contiene los ejemplos que utilice para la resolución de los ejercicios. 

## Análisis de API de Mercado Libre
Para el análisis de la API de MercadoLibre, se proporciona el archivo Ayrton Lorente - Ejercicio tecnico - Accenture.ipynb. Este script realiza consultas a la API para obtener información sobre productos electronicos y guarda los resultados en un archivo delimitado por comas para análisis adicional en un hipotético dashboard.
