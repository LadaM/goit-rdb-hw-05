USE topic_3;

-- select avg quantity for order details with more than 10 units ordered
WITH temp AS (
    SELECT * FROM order_details WHERE quantity > 10
)
SELECT
    temp.order_id,
    AVG(temp.quantity) AS avg_quantity
FROM
    temp
GROUP BY
    temp.order_id;
