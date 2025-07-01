Use me;


-- Create customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

-- Create orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert sample data into customers
INSERT INTO customers (customer_name, email) VALUES
('Arindam Mahapatra', 'arindamm@gmail.com'),
('Arik Saha', 'ariks@gmail.com'),
('Subhankar Paul', 'subhankarp@gmail.com'),
('Bibek Mahata', 'bibekm@gmail.com'),
('Arunava Ghosh', 'arunavag@gmail.com');

-- Insert sample data into orders
INSERT INTO orders (customer_id, order_date, amount) VALUES
(1, '2025-06-01', 150.00),
(1, '2025-06-15', 200.00),
(2, '2025-06-20', 75.50),
(3, '2025-07-01', 300.00),
(3, '2025-07-10', 120.00),
(3, '2025-07-15', 50.00),
(4, '2025-05-05', 450.00),
(5, '2025-07-20', 600.00),
(5, '2025-07-21', 100.00),
(5, '2025-07-22', 50.00);

