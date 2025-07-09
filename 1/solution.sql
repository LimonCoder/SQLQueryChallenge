with year_wise_employee_sales_data as (
select EmployeeID, YEAR(SaleDate) as year, sum(Amount) as total_amount from Sales group by EmployeeID, YEAR(SaleDate)
),

2023_sales_data as (
select EmployeeID,total_amount  from year_wise_employee_sales_data where year = 2023
),
2024_sales_data as (
select EmployeeID,total_amount  from year_wise_employee_sales_data where year = 2024
)

SELECT 2024_sales_data.EmployeeID, name  from 2024_sales_data 
join 2023_sales_data on 2024_sales_data.EmployeeID = 2023_sales_data.EmployeeID
join Employees as e on 2024_sales_data .EmployeeID = e.EmployeeID
where 2024_sales_data.total_amount > 2023_sales_data.total_amount
