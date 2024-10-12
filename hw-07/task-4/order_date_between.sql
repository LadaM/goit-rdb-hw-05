USE topic_3;

SET @first_date = DATE('1996-07-10');
SET @second_date = DATE('1996-10-08');

SELECT COUNT(*) AS order_number
FROM orders
WHERE date BETWEEN @first_date AND @second_date;