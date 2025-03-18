--  Admin Users

CREATE TABLE Admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL  
);

INSERT INTO Admins (username, password_hash) VALUES
('admin1', SHA2('securepassword', 256));  

-- Admin Login Verification Query-- 
SELECT * FROM Admins WHERE username = 'admin1' AND password_hash = SHA2('securepassword', 256);

