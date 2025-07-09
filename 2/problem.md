# 📊 Monthly Sales Analysis with SQL Window Functions

## 📌 Problem Statement

Analyze the monthly total sales from a simplified e-commerce dataset for the year **2024**, and **rank each month** based on total sales revenue (highest to lowest), using SQL **window functions**.

---

## 🗃️ Database Schema

### 🧾 Table: `Orders`

| Column     | Type | Description          |
|------------|------|----------------------|
| OrderID    | INT  | Primary key          |
| CustomerID | INT  | ID of the customer   |
| OrderDate  | DATE | Date of the order    |

---

### 🧾 Table: `OrderItems`

| Column       | Type        | Description                   |
|--------------|-------------|-------------------------------|
| OrderItemID  | INT         | Primary key                   |
| OrderID      | INT         | Foreign key (references `Orders`) |
| ProductName  | VARCHAR(100)| Name of the product           |
| Quantity     | INT         | Quantity ordered              |
| Price        | DECIMAL     | Price per unit                |

---

## 🧪 Sample Data

```sql
-- Orders Table
INSERT INTO Orders VALUES
(101, 1, '2024-01-10'),
(102, 2, '2024-01-15'),
(103, 1, '2024-02-05'),
(104, 3, '2024-02-10'),
(105, 4, '2024-03-01');

-- OrderItems Table
INSERT INTO OrderItems VALUES
(1, 101, 'Laptop', 1, 1000.00),
(2, 102, 'Mouse', 2, 20.00),
(3, 103, 'Keyboard', 1, 50.00),
(4, 104, 'Monitor', 1, 300.00),
(5, 105, 'Tablet', 1, 250.00);
