# ⏱️ Event Log Gap Detection (Hourly Time-Series)

This repository provides a sample dataset and SQL logic to simulate and detect **missing hourly event records** in a time-series log table.

## 🧾 Table Structure

```sql
CREATE TABLE event_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_time DATETIME NOT NULL
);

INSERT INTO event_logs (event_time) VALUES
('2025-07-01 00:00:00'),
('2025-07-01 01:00:00'),
('2025-07-01 02:00:00'),
-- Missing 03:00
('2025-07-01 04:00:00'),
('2025-07-01 05:00:00'),
('2025-07-01 06:00:00'),
-- Missing 07:00
('2025-07-01 08:00:00'),
('2025-07-01 09:00:00'),
('2025-07-01 10:00:00'),
('2025-07-01 11:00:00'),
('2025-07-01 12:00:00'),
('2025-07-01 13:00:00'),
-- Missing 14:00
('2025-07-01 15:00:00'),
('2025-07-01 16:00:00'),
('2025-07-01 17:00:00'),
('2025-07-01 18:00:00'),
('2025-07-01 19:00:00'),
-- Missing 20:00
('2025-07-01 21:00:00'),
('2025-07-01 22:00:00'),
('2025-07-01 23:00:00');
