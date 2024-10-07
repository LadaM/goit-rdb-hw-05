USE topic_3;

-- the table employees doesn't have any foreign keys to be joined with all other tables
-- therefore, employees table has been omitted
SELECT *
FROM products p
         JOIN order_details od on p.id = od.product_id
         JOIN categories c on c.id = p.category_id
         JOIN suppliers s on s.id = p.supplier_id
         JOIN orders o on od.order_id = o.id
         JOIN customers c2 on c2.id = o.customer_id;
