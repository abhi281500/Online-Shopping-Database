-- Discount Coupons-- 
CREATE TABLE Coupons (
    coupon_id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) UNIQUE NOT NULL,
    discount_percent INT CHECK (discount_percent BETWEEN 1 AND 100),
    expiry_date DATE NOT NULL
);

--  Orders Table to include coupon_id
ALTER TABLE Orders ADD COLUMN coupon_id INT;
ALTER TABLE Orders ADD FOREIGN KEY (coupon_id) REFERENCES Coupons(coupon_id) ON DELETE SET NULL;

INSERT INTO Coupons (code, discount_percent, expiry_date) VALUES
('SAVE10', 10, '2025-12-31'),
('WELCOME20', 20, '2025-06-30');

-- Apply Discount on Order
UPDATE Orders 
SET coupon_id = 1, total_amount = total_amount * (1 - (SELECT discount_percent / 100 FROM Coupons WHERE coupon_id = 1))
WHERE order_id = 1;
