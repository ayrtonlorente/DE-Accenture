-- Creación de la tabla Customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    address VARCHAR(255),
    birthdate DATE,
    phone VARCHAR(20)
);

-- Creación de la tabla Category
CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    description VARCHAR(255),
    path VARCHAR(255)
);

-- Creación de la tabla Item
CREATE TABLE Item (
    item_id INT PRIMARY KEY,
    category_id INT,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- Creación de la tabla Order
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    item_id INT,
    item_quantity INT,
    total_amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (item_id) REFERENCES Item(item_id)
);

-- Creación de la tabla ItemEndOfDay como tabla que contiene el precio y estado de los items a fin del día.
CREATE TABLE ItemEndOfDay (
    item_id INT PRIMARY KEY,
    end_of_day_price DECIMAL(10, 2),
    end_of_day_status VARCHAR(20)
);

-- Creación de indice en la tabla Item en su columna status
CREATE INDEX idx_item_status ON Item(status);