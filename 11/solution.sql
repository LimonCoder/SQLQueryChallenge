with append_previous_month_sales_column as (

SELECT *,
LAG(monthly_sales ) over(partition by product_id order by month) as previous_month_sales
from monthly_sales ms 

),

generate_previous_month_sales as (
SELECT *
, case when  monthly_sales > previous_month_sales then 1 else 0 end as is_incresed_sales

from append_previous_month_sales_column

)

select product_id from generate_previous_month_sales

group by product_id,is_incresed_sales
having count(is_incresed_sales) >= 3
