# SQL Problem: Monthly Running Total of Order Prices

## Question

Write a SQL query to calculate the running total of `Price` for each order, **partitioned by month**, and **ordered by OrderID** within each month. The query should return the following columns:

- `OrderID`: The ID of the order
- `months`: The month of the order (from the `OrderDate`)
- `Price`: The price of the order item
- `total`: The cumulative (running) total price for that month, ordered by OrderID

### Schema

Assume you have the following tables:

#### `Orders`
| Column     | Type    |
|------------|---------|
| OrderID    | INT     |
| OrderDate  | DATE    |

#### `OrderItems`
| Column     | Type    |
|------------|---------|
| OrderID    | INT     |
| Price      | DECIMAL |

### Additional Constraints

- Only include orders placed between **January 1, 2024** and **December 31, 2024**.
