USE hw_2;

-- removing the transitive dependency between customer name and customer address by creating a new table for customers
CREATE TABLE IF NOT EXISTS customers_3NF (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address VARCHAR(255)
);

-- new order table that references a customer table
CREATE TABLE IF NOT EXISTS orders_3NF (
    number INT PRIMARY KEY,
    date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers_3NF(id)
);

-- new order details table with a composite key of order number and product name referencing orders table
CREATE TABLE IF NOT EXISTS order_details_3NF (
    order_number INT,
    product_name VARCHAR(100),
    product_quantity INT,
    PRIMARY KEY (order_number, product_name),
    FOREIGN KEY (order_number) REFERENCES orders_3NF(number)
);

-- inserting existing data into tables ignoring the data that breaks the unique constraints
INSERT IGNORE INTO customers_3NF (name, address)
VALUES
    ('Мельник', 'Хрещатик 1'),
    ('Шевченко', 'Басейна 2'),
    ('Коваленко', 'Комп’ютерна 3');

INSERT IGNORE INTO orders_3NF (number, date, customer_id)
VALUES
    (101, '2023-03-15', 1),
    (102, '2023-03-16', 2),
    (103, '2023-03-17', 3);

INSERT IGNORE INTO order_details_3NF (order_number, product_name, product_quantity)
VALUES
    (101, 'Laptop', 3),
    (101, 'Mouse', 2),
    (102, 'Printer', 1),
    (103, 'Mouse', 4);
