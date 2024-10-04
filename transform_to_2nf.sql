USE hw_2;

-- creating a separate orders table
CREATE TABLE IF NOT EXISTS orders_2NF (
    order_number INT PRIMARY KEY,
    customer_address VARCHAR(255),
    order_date DATE,
    customer_name VARCHAR(100)
);

-- creating a table to store order details
CREATE TABLE IF NOT EXISTS order_details_2NF (
    order_number INT,
    product_name VARCHAR(100),
    product_quantity INT,
    PRIMARY KEY (order_number, product_name),
    FOREIGN KEY (order_number) REFERENCES orders_2NF(order_number)
);

-- inserting original data into orders table
INSERT INTO orders_2NF (order_number, customer_address, order_date, customer_name)
VALUES
    (101, 'Хрещатик 1', '2023-03-15', 'Мельник'),
    (102, 'Басейна 2', '2023-03-16', 'Шевченко'),
    (103, 'Комп’ютерна 3', '2023-03-17', 'Коваленко');

-- inserting original data into order details table
INSERT INTO order_details_2NF (order_number, product_name, product_quantity)
VALUES
    (101, 'Laptop', 3),
    (101, 'Mouse', 2),
    (102, 'Printer', 1),
    (103, 'Mouse', 4);
