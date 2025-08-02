# 🧾 First Purchase Date and Days Since

## 📌 Objective

- Find each user's **first purchase date**.
- Calculate the **number of days since** that first purchase (based on current date).

---

## 🗄️ Table: `purchases`

### ✅ DDL (Table Creation)

```sql
CREATE TABLE purchases (
    user_id INT,
    purchase_date DATE
);

INSERT INTO purchases (user_id, purchase_date) VALUES 
(101, '2024-06-01'),
(101, '2024-06-10'),
(102, '2024-06-05'),
(102, '2024-06-25');
