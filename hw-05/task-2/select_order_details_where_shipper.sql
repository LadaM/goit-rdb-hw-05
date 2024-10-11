USE topic_3;

-- select all order details from specific shipper
SELECT *
FROM
    order_details od
WHERE
    od.order_id IN (SELECT o.id FROM orders o WHERE o.shipper_id = 3);
