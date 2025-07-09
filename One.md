# 📊 Employee Sales Performance Comparison (2023 vs 2024)

This project identifies employees who had **higher total sales in 2024** compared to **2023**, using basic SQL aggregation and filtering techniques.

---

## 📌 Problem Statement

**Goal**: Find employees whose total sales amount in the year 2024 is greater than that in 2023.

---

## 🧱 Database Schema

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    SaleDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Employees
INSERT INTO Employees (EmployeeID, Name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

-- Sales
INSERT INTO Sales (SaleID, EmployeeID, SaleDate, Amount) VALUES
(1, 1, '2023-01-15', 100.00),
(2, 1, '2023-02-20', 150.00),
(3, 2, '2023-03-10', 200.00),
(4, 1, '2024-01-05', 120.00),
(5, 2, '2024-02-12', 250.00),
(6, 3, '2023-04-01', 300.00),
(7, 3, '2024-03-25', 280.00),
(8, 4, '2023-05-01', 50.00),
(9, 4, '2024-04-10', 70.00),
(10, 1, '2024-03-01', 180.00);


-- Solution :
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
