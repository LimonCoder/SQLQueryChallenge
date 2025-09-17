# 🧳 Sales Growth

## 📌 Problem Statement
Write a query to return Territory and corresponding Sales Growth. Compare growth between periods Q4-2021 vs Q3-2021. If Territory (say T123) has Sales worth $100 in Q3-2021 and Sales worth $110 in Q4-2021, then the Sales Growth will be 10% [ i.e. = ((110 - 100)/100) * 100 ]

Output the ID of the Territory and the Sales Growth. Only output these territories that had any sales in both quarters.



---

## 🗂️ Schema

```sql
-- Fact table: Customer Sales
CREATE TABLE fct_customer_sale (
    cust_id VARCHAR(50),
    prod_sku_id VARCHAR(50),
    order_date DATETIME,
    order_value BIGINT,
    order_id VARCHAR(50)
);

-- Mapping table: Customer → Territory
CREATE TABLE map_customer_territories (
    cust_id VARCHAR(50),
    territory_id VARCHAR(50)
);

-- Insert sample sales
INSERT INTO fct_customer_sale (cust_id, prod_sku_id, order_date, order_value, order_id) VALUES
('C001', 'P100', '2021-07-15', 100, 'O1001'),
('C002', 'P101', '2021-07-20', 200, 'O1002'),
('C001', 'P100', '2021-10-05', 150, 'O1003'),
('C002', 'P101', '2021-10-10', 250, 'O1004'),
('C003', 'P102', '2021-08-22', 180, 'O1005'),
('C003', 'P102', '2021-11-30', 210, 'O1006');

-- Insert mapping
INSERT INTO map_customer_territories (cust_id, territory_id) VALUES
('C001', 'T001'),
('C002', 'T002'),
('C003', 'T003');

