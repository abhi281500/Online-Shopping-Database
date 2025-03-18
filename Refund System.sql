-- Refund System


CREATE TABLE Refunds (
    refund_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    user_id INT,
    reason TEXT,
    refund_status ENUM('Pending', 'Approved', 'Rejected') DEFAULT 'Pending',
    requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

INSERT INTO Refunds (order_id, user_id, reason) VALUES
(1, 1, 'Product was damaged.');

-- Refund Requests
SELECT Refunds.refund_id, Users.name, Orders.order_id, Refunds.reason, Refunds.refund_status, Refunds.requested_at
FROM Refunds
JOIN Users ON Refunds.user_id = Users.user_id
JOIN Orders ON Refunds.order_id = Orders.order_id
ORDER BY Refunds.requested_at DESC;
