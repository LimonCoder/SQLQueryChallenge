# Daily Active Users Report

## 🗂 Table: `user_logins`

Tracks user login activity with timestamps.

### 📄 Table Structure

| Column Name     | Data Type | Description               |
|------------------|------------|-----------------------------|
| `user_id`        | INT        | Unique identifier for user |
| `login_datetime` | DATETIME   | Timestamp of user login    |

---

## 📥 Sample Data

```sql
-- Create Table
CREATE TABLE user_logins (
    user_id INT,
    login_datetime DATETIME
);

-- Insert Sample Data
INSERT INTO user_logins (user_id, login_datetime) VALUES
(101, '2024-06-01 08:30:00'),
(102, '2024-06-01 09:15:00'),
(101, '2024-06-01 18:20:00'),
(103, '2024-06-02 10:45:00'),
(102, '2024-06-02 14:00:00');
