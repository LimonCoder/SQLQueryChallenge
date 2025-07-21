# 🧾 Second Highest Transaction Per User (Without LIMIT or TOP)

## 🗂 Table: `transactions`

Tracks each user's transaction amounts.

### 📄 Table Structure

| Column Name         | Data Type    | Description                          |
|---------------------|--------------|--------------------------------------|
| `user_id`           | INT          | Unique identifier for the user       |
| `transaction_amount`| DECIMAL(10,2)| Transaction amount made by the user  |

---

## 📥 Sample Dataset

```sql
-- Create the transactions table
CREATE TABLE transactions (
    user_id INT,
    transaction_amount DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO transactions (user_id, transaction_amount) VALUES
(1, 500.00),
(1, 800.00),
(1, 1000.00),
(2, 200.00),
(2, 300.00);
