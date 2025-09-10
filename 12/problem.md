# 🧳 Travelers World Tour Problem

## 📌 Problem Statement
A group of travelers embark on world tours starting with their **home cities**.  
Each traveler has an undecided itinerary that evolves over the course of the tour.

Some travelers decide to **abruptly end their journey mid-travel** and live in their last destination.

👉 Given the dataset of dates on which they travelled between different pairs of cities,  
can you find out **how many travelers ended back in their home city**?

⚡ For simplicity:
- Each traveler made at most **one trip between two cities in a day**.

---

## 🎯 Learning Goals
By solving this problem, you will learn:
- How to use **CTEs**
- How to apply **Group By**
- How to work with **Aggregate Functions**
- How to analyze traveler journey data

---

## 🗄️ Schema
```sql
CREATE TABLE travel_history (
    date DATE,
    start_city VARCHAR(50),
    end_city VARCHAR(50),
    traveler VARCHAR(50)
);

INSERT INTO travel_history (date, start_city, end_city, traveler) VALUES
('2024-01-01', 'Delhi', 'Dubai', 'Amit'),
('2024-01-05', 'Dubai', 'London', 'Amit'),
('2024-01-10', 'London', 'Delhi', 'Amit'),

('2024-02-01', 'Mumbai', 'Singapore', 'Priya'),
('2024-02-05', 'Singapore', 'Sydney', 'Priya'),
('2024-02-10', 'Sydney', 'New York', 'Priya'),

('2024-03-01', 'Kolkata', 'Bangkok', 'Raj'),
('2024-03-03', 'Bangkok', 'Tokyo', 'Raj'),
('2024-03-07', 'Tokyo', 'Kolkata', 'Raj'),

('2024-04-01', 'Bangalore', 'Paris', 'Neha'),
('2024-04-05', 'Paris', 'Rome', 'Neha'),
('2024-04-10', 'Rome', 'Berlin', 'Neha'),

('2024-05-01', 'Chennai', 'Dubai', 'Arjun'),
('2024-05-03', 'Dubai', 'Amsterdam', 'Arjun'),
('2024-05-06', 'Amsterdam', 'Chennai', 'Arjun');
