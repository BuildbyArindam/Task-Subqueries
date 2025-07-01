# 🧩 Task: Subqueries and Nested Queries 

## 📌 Objective
This project demonstrates the use of **subqueries and nested queries** in SQL, focusing on the following objectives:

- Using subqueries in `SELECT`, `WHERE`, and `FROM` clauses.
- Utilizing scalar and correlated subqueries.
- Applying subqueries inside `IN`, `EXISTS`, and `=` operators.
- Developing advanced query logic skills through practical examples.

---

## 🛠 Tools Used

- **MySQL Workbench**  
  MySQL Workbench was used to write and execute SQL queries. It also provides a visual interface to inspect the database schema and query results.

---


## 🧱 Database Design

The sample database `shopdb` contains two tables:

### 1. Customers

| Column Name   | Data Type    | Description             |
|---------------|--------------|-------------------------|
| `customer_id` | INT (PK)     | Unique customer ID      |
| `customer_name` | VARCHAR(100) | Name of the customer    |
| `email`       | VARCHAR(100) | Email of the customer   |

### 2. Orders

| Column Name   | Data Type     | Description                        |
|---------------|---------------|----------------------------------|
| `order_id`    | INT (PK)      | Unique order ID                   |
| `customer_id` | INT (FK)      | References `customers.customer_id` |
| `order_date`  | DATE          | Date when order was placed        |
| `amount`      | DECIMAL(10,2) | Total amount of the order         |

The relationship is one-to-many:
- One customer can have many orders.
- Orders belong to one customer.

---
