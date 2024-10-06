USE hw_2;

-- create a new table in 1NF
CREATE TABLE IF NOT EXISTS orders_1NF (
    order_number INT,
    product_name VARCHAR(100),
    product_quantity INT,
    customer_address VARCHAR(255),
    order_date DATE,
    customer_name VARCHAR(100),
    PRIMARY KEY (order_number, product_name)
);

-- inserting the original data:
INSERT IGNORE INTO orders_1NF (order_number, product_name, product_quantity, customer_address, order_date, customer_name)
VALUES
    (101, 'Laptop', 3, 'Хрещатик 1', '2023-03-15', 'Мельник'),
    (101, 'Mouse', 2, 'Хрещатик 1', '2023-03-15', 'Мельник'),
    (102, 'Printer', 1, 'Басейна 2', '2023-03-16', 'Шевченко'),
    (103, 'Mouse', 4, 'Комп’ютерна 3', '2023-03-17', 'Коваленко');
