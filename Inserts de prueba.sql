-- Inserts para la tabla Customer
INSERT INTO Customer (customer_id, email, first_name, last_name, sex, address, birthdate, phone)
VALUES (1, 'cliente1@example.com', 'Juan', 'Pérez', 'M', 'Calle 123', '1990-01-15', '123-456-7890'),
       (2, 'cliente2@example.com', 'María', 'Gómez', 'F', 'Avenida 456', '1985-05-20', '987-654-3210'),
       (3, 'cliente3@example.com', 'Ricardo', 'Gutierrez', 'M', 'Calle 128', '2023-08-19', '123-456-7890'),
       (4, 'cliente4@example.com', 'Nicole', 'Vazquez', 'F', 'Calle ds53', '1990-07-15', '123-456-1890'),
       (5, 'cliente5@example.com', 'Luciana', 'Medina', 'F', 'Avenida 4356', '1989-05-20', '917-654-3210'),
       (6, 'cliente6@example.com', 'Lucia', 'Dominguez', 'F', 'Calle dds13', '1992-11-15', '223-456-1890');


-- Inserts para la tabla Category
INSERT INTO Category (category_id, description, path)
VALUES (1, 'Electrónica', '1'),
       (2, 'Ropa', '2'),
       (3, 'Hogar', '3'),
       (4, 'Celulares', '1-4');

-- Inserts para la tabla Item
INSERT INTO Item (item_id, category_id, name, price, status)
VALUES (101, 4, 'Iphone 13', 599.99, 'Disponible'),
       (102, 4, 'Galaxy A14', 299.99, 'Agotado'),
       (103, 2, 'Camiseta', 19.99, 'Disponible'),
       (104, 1, 'Teléfono inteligente', 599.99, 'Disponible');

-- Inserts para la tabla Orders
INSERT INTO Orders (order_id, customer_id, item_id, item_quantity, total_amount, order_date)
VALUES (1001, 1, 101, 2, 1199.98, '2020-01-15'),
       (1002, 2, 103, 1, 19.99, '2020-01-20'),
       (1003, 1, 101, 1, 599.99, '2020-02-01'),
       (1004, 3, 102, 3, 899.97, '2020-01-16'),
       (1005, 4, 101, 2, 1199.98, '2020-01-09'),
       (1006, 5, 102, 1, 299.99, '2020-02-21'),
       (1007, 5, 101, 1, 599.99, '2020-03-01'),
       (1008, 1, 101, 1, 599.99, '2020-05-01'),
       (1009, 1, 102, 1, 299.99, '2020-01-10'),
       (1010, 2, 102, 1, 299.99, '2020-01-09'),
       (1011, 5, 102, 2, 599.98, '2020-01-09'),
       (1012, 6, 102, 4, 1199.96, '2020-01-03');