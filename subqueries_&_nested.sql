Use me;

-- Subquery in WHERE clause with IN - Find customers who placed orders in July 2025
SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE order_date BETWEEN '2025-07-01' AND '2025-07-31'
);

-- Subquery in WHERE clause with EXISTS - Get customers who have placed at least one order
SELECT customer_name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);

-- Subquery in FROM clause (Derived Table) - Calculate the average number of orders per customer
SELECT AVG(total_orders) AS avg_orders_per_customer
FROM (
    SELECT customer_id, COUNT(*) AS total_orders
    FROM orders
    GROUP BY customer_id
) AS customer_orders;

-- Scalar Subquery with = operator - Find customers who placed the highest number of orders
SELECT customer_name
FROM customers c
WHERE (SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.customer_id) = (
    SELECT MAX(order_count) FROM (
        SELECT customer_id, COUNT(*) AS order_count FROM orders GROUP BY customer_id
    ) AS counts
);


