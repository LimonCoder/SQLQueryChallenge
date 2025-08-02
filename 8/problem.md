# 🕒 Employee Attendance Gap Analysis

This project demonstrates how to calculate the time gap (in minutes) between a current login and the previous logout for each employee using SQL.

---

## 🧩 Problem Statement

Given a table `employee_attendance` with the following columns:

- `employee_id` (INT)
- `login_time` (TIMESTAMP)
- `logout_time` (TIMESTAMP)

👉 Write a SQL query to find the **time gap in minutes** between the **current login** and the **previous logout** for each employee.

---

## 🧱 Table Schema (DDL)

```sql
CREATE TABLE employee_attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    login_time TIMESTAMP NOT NULL,
    logout_time TIMESTAMP NOT NULL
);

-- Employee 1
INSERT INTO employee_attendance (employee_id, login_time, logout_time) VALUES
(1, '2025-07-30 08:00:00', '2025-07-30 12:00:00'),
(1, '2025-07-30 13:00:00', '2025-07-30 17:00:00'),
(1, '2025-07-31 08:30:00', '2025-07-31 12:30:00');

-- Employee 2
INSERT INTO employee_attendance (employee_id, login_time, logout_time) VALUES
(2, '2025-07-30 09:00:00', '2025-07-30 11:00:00'),
(2, '2025-07-30 15:00:00', '2025-07-30 18:00:00'),
(2, '2025-07-31 09:30:00', '2025-07-31 12:00:00');

-- Employee 3
INSERT INTO employee_attendance (employee_id, login_time, logout_time) VALUES
(3, '2025-07-29 10:00:00', '2025-07-29 13:00:00'),
(3, '2025-07-29 14:00:00', '2025-07-29 17:00:00'),
(3, '2025-07-30 09:00:00', '2025-07-30 12:00:00');

-- Employee 4
INSERT INTO employee_attendance (employee_id, login_time, logout_time) VALUES
(4, '2025-07-31 08:00:00', '2025-07-31 11:00:00'),
(4, '2025-07-31 12:00:00', '2025-07-31 16:00:00'),
(4, '2025-08-01 09:00:00', '2025-08-01 13:00:00');

-- Employee 5
INSERT INTO employee_attendance (employee_id, login_time, logout_time) VALUES
(5, '2025-07-29 07:30:00', '2025-07-29 11:30:00'),
(5, '2025-07-29 13:00:00', '2025-07-29 17:00:00'),
(5, '2025-07-30 08:00:00', '2025-07-30 12:00:00');
