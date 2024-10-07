USE topic_3;

-- all products have suppliers and categories, therefore LEFT JOIN will have the same number of results as INNER JOIN
SELECT
    p.id AS product_id,
    p.name AS product_name,
    c.name AS category_name,
    s.name AS supplier_name
FROM products p
JOIN categories c ON p.category_id = c.id
JOIN suppliers s ON p.supplier_id = s.id;

SELECT s.id AS supplier_id,
       s.name AS supplier_name,
       p.name AS product_name
FROM suppliers s
    LEFT JOIN topic_3.products p on s.id = p.supplier_id;
-- WHERE p.id IS NULL; -- there are no suppliers without products, therefore, LEFT JOIN has the same result

-- LEFT JOIN will have more results than INNER JOIN
-- select customers without orders
SELECT cust.name AS customer_name,
       o.id AS order_id,
       o.date AS order_date
FROM customers cust
LEFT JOIN topic_3.orders o on cust.id = o.customer_id
WHERE o.id is null;

