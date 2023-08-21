--Ejercicio 1

SELECT c.customer_id, c.first_name, c.last_name, c.birthdate, COUNT(o.order_id) AS order_count
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE MONTH(o.order_date) = 1         -- Filtra ordenes de enero
  AND YEAR(o.order_date) = 2020      -- Filtra ordenes de 2020
GROUP BY c.customer_id, c.first_name, c.last_name, c.birthdate
HAVING COUNT(o.order_id) > 1500     -- Filtra por cantidad de ordenes
  AND DAY(c.birthdate) = DAY(GETDATE())   -- Filtra cumpleaños del día de hoy
  AND MONTH(c.birthdate) = MONTH(GETDATE())  -- Filtra cumpleaños del mes de hoy




-- Ejercicio 2

SELECT
    year,
    month,
    first_name,
    last_name,
    sales_count,
    total_products_sold,
    total_amount_sold
FROM (
    -- Subconsulta para calcular las estadísticas y numeros de fila
    SELECT
        YEAR(o.order_date) AS year,
        MONTH(o.order_date) AS month,
        c.first_name,
        c.last_name,
        COUNT(o.order_id) AS sales_count,                 -- Cantidad de ventas realizadas
        SUM(o.item_quantity) AS total_products_sold,      -- Cantidad total de productos vendidos
        SUM(o.total_amount) AS total_amount_sold,         -- Monto total vendido
        ROW_NUMBER() OVER (PARTITION BY YEAR(o.order_date), MONTH(o.order_date) ORDER BY SUM(o.total_amount) DESC) AS row_num -- Se obtiene numero de filas particionando por año y mes
    FROM
        Customer c
    JOIN
        Orders o ON c.customer_id = o.customer_id
    JOIN
        Item i ON o.item_id = i.item_id
    JOIN
        Category cat ON i.category_id = cat.category_id
    WHERE
        YEAR(o.order_date) = 2020                        -- Filtrar ordenes del año 2020
        AND cat.description = 'Celulares'                -- Filtrar categoría 'Celulares'
    GROUP BY
        YEAR(o.order_date),
        MONTH(o.order_date),
        c.first_name,
        c.last_name
) top_sales_by_month
WHERE row_num <= 5;  -- Filtrar los 5 mejores resultados por mes




-- Ejercicio 3

CREATE PROCEDURE UpdateItemEndOfDay
AS
BEGIN
    -- Eliminar los datos existentes
    DELETE FROM ItemEndOfDay;

    -- Insertar los registros actuales de la tabla Item en ItemEndOfDay
    INSERT INTO ItemEndOfDay (item_id, end_of_day_price, end_of_day_status)
    SELECT item_id, price, status
    FROM Item;

END;

EXECUTE UpdateItemEndOfDay;
GO