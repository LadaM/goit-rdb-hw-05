USE topic_3;

-- all orders seem to have > 21 average quantity
SELECT c.name as category_name, AVG(od.quantity) AS avg_order_quantity, COUNT(p.id) AS num_of_products
FROM products p
         JOIN order_details od on p.id = od.product_id
         JOIN categories c on c.id = p.category_id
         JOIN suppliers s on s.id = p.supplier_id
         JOIN orders o on od.order_id = o.id
         JOIN shippers sh on sh.id = o.shipper_id
         JOIN employees e on o.employee_id = e.employee_id
         JOIN customers c2 on c2.id = o.customer_id
GROUP BY c.name
HAVING avg_order_quantity > 21;