USE topic_3;

DROP FUNCTION IF EXISTS divide_function;

DELIMITER //
-- returning the result of division of two floats
CREATE FUNCTION divide_function(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    RETURN a / b;
END //

DELIMITER ;

-- applying the function to the `quantity` field
SELECT
    id,
    divide_function(quantity, 2.0) AS divided_quantity
FROM
    order_details;
