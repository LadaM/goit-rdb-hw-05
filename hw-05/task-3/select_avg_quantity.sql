USE topic_3;

-- selecting avg order quantity for order details with at least 10 units ordered
SELECT
    temp.order_id,
    AVG(temp.quantity) AS avg_quantity
FROM
    (SELECT * FROM order_details WHERE quantity > 10) AS temp
GROUP BY
    temp.order_id;
