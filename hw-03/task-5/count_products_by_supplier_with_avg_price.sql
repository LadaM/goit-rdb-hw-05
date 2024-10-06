use topic_3;

-- counting the number of products offered by specific supplier and their average price
select supplier_id,
       count(id)  as product_count,
       avg(price) as avg_price
from products
group by supplier_id;