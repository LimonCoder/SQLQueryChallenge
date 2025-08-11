with logged as (select distinct customer_id, product_id, purchase_date
                from purchases)

select p1.customer_id,
       p1.purchase_date,
       count(distinct p2.product_id) as cumulative_distinct_products
from logged p1
         join logged p2 on p1.customer_id = p2.customer_id and p2.purchase_date <= p1.purchase_date

group by p1.customer_id, p1.purchase_date