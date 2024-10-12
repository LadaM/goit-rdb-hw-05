USE topic_3;

-- order id & date as JSON
SELECT id,
       date,
       JSON_OBJECT('id', id, 'date', date) AS JSON
FROM orders;