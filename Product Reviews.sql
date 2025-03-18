-- Product Reviews


CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),  
    comment TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id) ON DELETE CASCADE
);

INSERT INTO Reviews (user_id, product_id, rating, comment) VALUES
(1, 1, 5, 'Amazing laptop! Very fast and great for gaming.'),
(2, 2, 4, 'Good headphones but battery life could be better.');

--  Product Reviews
SELECT Users.name, Products.name AS product_name, Reviews.rating, Reviews.comment, Reviews.review_date
FROM Reviews
JOIN Users ON Reviews.user_id = Users.user_id
JOIN Products ON Reviews.product_id = Products.product_id
ORDER BY Reviews.review_date DESC;
