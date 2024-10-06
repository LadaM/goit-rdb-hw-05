USE hw_2; -- replace schema name if necessary

-- Create the table only if it does not already exist
CREATE TABLE IF NOT EXISTS orders (
    order_number INT PRIMARY KEY,
    product_name_and_quantity TEXT,
    customer_address VARCHAR(255),
    order_date DATE,
    customer_name VARCHAR(100)
);
