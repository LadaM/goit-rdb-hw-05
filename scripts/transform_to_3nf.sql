USE hw_2;

-- removing the transitive dependency between customer name and customer address by creating a new table for customers
CREATE TABLE IF NOT EXISTS customers_3NF (
    customer_name VARCHAR(100) PRIMARY KEY,
    customer_address VARCHAR(255)
);

-- new order table that references a customer table
CREATE TABLE IF NOT EXISTS orders_3NF (
    order_number INT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(100),
    FOREIGN KEY (customer_name) REFERENCES customers_3NF(customer_name)
);

-- new order details table with a composite key of order number and product name referencing orders table
CREATE TABLE IF NOT EXISTS order_details_3NF (
    order_number INT,
    product_name VARCHAR(100),
    product_quantity INT,
    PRIMARY KEY (order_number, product_name),
    FOREIGN KEY (order_number) REFERENCES orders_3NF(order_number)
);

-- inserting existing data into tables ignoring the data that breaks the unique constraints
INSERT IGNORE INTO customers_3NF (customer_name, customer_address)
VALUES
    ('Мельник', 'Хрещатик 1'),
    ('Шевченко', 'Басейна 2'),
    ('Коваленко', 'Комп’ютерна 3');

INSERT IGNORE INTO orders_3NF (order_number, order_date, customer_name)
VALUES
    (101, '2023-03-15', 'Мельник'),
    (102, '2023-03-16', 'Шевченко'),
    (103, '2023-03-17', 'Коваленко');

INSERT IGNORE INTO order_details_3NF (order_number, product_name, product_quantity)
VALUES
    (101, 'Laptop', 3),
    (101, 'Mouse', 2),
    (102, 'Printer', 1),
    (103, 'Mouse', 4);
