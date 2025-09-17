with q3_sales_data as (select mct.territory_id, fcs.order_value as q3_order_value
                       from fct_customer_sale as fcs
                                join map_customer_territories as mct on mct.cust_id = fcs.cust_id
                       where order_date between '2021-07-01 00:00:00' AND '2021-09-30 00:00:00'
                       order by order_date),
     q4_sales_data as (select mct.territory_id, fcs.order_value as q4_order_value
                       from fct_customer_sale as fcs
                                join map_customer_territories as mct on mct.cust_id = fcs.cust_id
                       where order_date between '2021-10-01 00:00:00' AND '2021-12-31 00:00:00'
                       order by order_date)

select q3_sales_data.territory_id, q4_sales_data.q4_order_value,q3_sales_data.q3_order_value,
       ((q4_sales_data.q4_order_value - q3_sales_data.q3_order_value) / q3_sales_data.q3_order_value) * 100 as sales_growth_percent
from q3_sales_data
         join q4_sales_data on q4_sales_data.territory_id = q3_sales_data.territory_id

