# 📉 Identify Products with Declining Sales (3 Months in a Row)

## 🎯 Objective
Detect products whose sales have been **decreasing month-over-month for 3 consecutive months**.

---

## 🗂️ Sample Table: `monthly_sales`

| product_id | month       | monthly_sales |
|------------|------------|---------------|
| A          | 2024-01-01 | 500           |
| A          | 2024-02-01 | 450           |
| A          | 2024-03-01 | 400           |
| A          | 2024-04-01 | 420           |
| B          | 2024-01-01 | 300           |
| B          | 2024-02-01 | 320           |
| B          | 2024-03-01 | 290           |

---

## 🛠️ DDL (Table Creation)

```sql
CREATE TABLE monthly_sales (
    product_id VARCHAR(50),
    month DATE,
    monthly_sales INT,
    PRIMARY KEY (product_id, month)
);

INSERT INTO monthly_sales (product_id, month, monthly_sales) VALUES
('A', '2024-01-01', 500),
('A', '2024-02-01', 450),
('A', '2024-03-01', 400),
('A', '2024-04-01', 420),
('B', '2024-01-01', 300),
('B', '2024-02-01', 320),
('B', '2024-03-01', 290);
