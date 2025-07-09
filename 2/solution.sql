with month_wise_total_sales as (
	select MONTH(o.OrderDate) months, SUM(oi.Price) as total_price from Orders o 
	join OrderItems oi on o.OrderID = oi.OrderID
	where o.OrderDate BETWEEN  '2024-01-01' and '2024-12-31'
	group by MONTH(o.OrderDate)

)

select *, RANK() over(order by total_price DESC) as ranking from month_wise_total_sales;