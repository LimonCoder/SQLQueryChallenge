with added_before_rows_quantity_into_sales as
(
  select *, LAG(quantity, 1,0) over(partition by product_id order by sale_date) as before_rows_quantity from sales

),
quantitiy_incresed_consecutive_month_sales as (
  select *, IF(quantity > before_rows_quantity, 1,0) as is_increse_before_month from added_before_rows_quantity_into_sales
)

select product_id from quantitiy_incresed_consecutive_month_sales
where is_increse_before_month = 1
group by product_id, is_increse_before_month
having count(*) >= 3;