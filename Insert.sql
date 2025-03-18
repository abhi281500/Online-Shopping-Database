INSERT INTO Users (name, email, phone, address) VALUES
('Amit Sharma', 'amit.sharma@example.com', '9876543210', 'Mumbai, India'),
('Priya Verma', 'priya.verma@example.com', '9123456789', 'Delhi, India');
INSERT INTO Products (name, description, price, stock_quantity, category) VALUES
('Laptop', 'Gaming Laptop with 16GB RAM', 65000.00, 10, 'Electronics'),
('Headphones', 'Wireless Bluetooth Headphones', 4000.00, 20, 'Accessories');
INSERT INTO Orders (user_id, total_amount, status) VALUES
(1, 69000.00, 'Pending');
INSERT INTO Order_Items (order_id, product_id, quantity, subtotal) VALUES
(1, 1, 1, 65000.00),
(1, 2, 1, 4000.00);
INSERT INTO Payments (order_id, payment_method, payment_status, transaction_id) VALUES
(1, 'UPI', 'Completed', 'TXN98765');