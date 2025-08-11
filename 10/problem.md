# Cumulative Distinct Product Purchases per Customer

## 📌 Objective
For each customer and each purchase date, calculate the **cumulative count of distinct products purchased so far**.

---

## 🗄️ Sample Table: `purchases`

| customer_id | product_id | purchase_date |
|-------------|-----------|---------------|
| 1           | A         | 2024-01-01 |
| 1           | B         | 2024-01-03 |
| 1           | A         | 2024-01-05 |
| 1           | C         | 2024-01-06 |
| 2           | B         | 2024-01-02 |
| 2           | B         | 2024-01-04 |

---

## 🛠️ DDL (Table Creation)
```sql
CREATE TABLE purchases (
    customer_id INT NOT NULL,
    product_id VARCHAR(50) NOT NULL,
    purchase_date DATE NOT NULL
);

INSERT INTO purchases (customer_id, product_id, purchase_date)
VALUES
(1, 'A', '2024-01-01'),
(1, 'B', '2024-01-03'),
(1, 'A', '2024-01-05'),
(1, 'C', '2024-01-06'),
(2, 'B', '2024-01-02'),
(2, 'B', '2024-01-04');
