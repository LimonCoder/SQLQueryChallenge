# Identify Products with Sales Increasing for Three Consecutive Months

## 🧩 Problem Statement

We want to identify **products** whose **monthly sales quantities** increased for **three consecutive months**.  

---

## 🗂 Schema Definition (DDL)

### `products` table

```sql
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    sale_date DATE,
    quantity INT
);

-- Insert products
INSERT INTO products (id, name) VALUES 
(1, 'Product A'),
(2, 'Product B'),
(3, 'Product C');

-- Insert sales records
INSERT INTO sales (product_id, sale_date, quantity) VALUES
(1, '2024-01-15', 10),
(1, '2024-02-10', 20),
(1, '2024-03-05', 30),
(1, '2024-04-01', 25),
(2, '2024-01-12', 5),
(2, '2024-02-15', 7),
(2, '2024-03-20', 6),
(3, '2024-01-10', 8),
(3, '2024-02-10', 12),
(3, '2024-03-10', 15),
(3, '2024-04-10', 18);
