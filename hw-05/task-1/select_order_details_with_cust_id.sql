USE topic_3;

-- order details with customer ids
SELECT
    od.*,
    (SELECT o.customer_id FROM orders o WHERE o.id = od.order_id) AS customer_id
FROM
    order_details od;
