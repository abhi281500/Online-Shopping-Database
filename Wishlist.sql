-- Wishlist

CREATE TABLE Wishlist (
    wishlist_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

INSERT INTO Wishlist (user_id, product_id) VALUES
(1, 1),
(2, 2);

-- Wishlist for a User
SELECT Users.name, Products.name AS product_name, Wishlist.added_at
FROM Wishlist
JOIN Users ON Wishlist.user_id = Users.user_id
JOIN Products ON Wishlist.product_id = Products.product_id
WHERE Wishlist.user_id = 1;
