select OrderID,months,Price,

sum(Price) over (partition by months order by id) as total
from (

select o.OrderID, month(OrderDate) as months,Price,
ROW_NUMBER() over (order by o.OrderID) as id    
from Orders o 
	join OrderItems oi on o.OrderID = oi.OrderID
	where o.OrderDate BETWEEN  '2024-01-01' and '2024-12-31'
	
	
	) as temp