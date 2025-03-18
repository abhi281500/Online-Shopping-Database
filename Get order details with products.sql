-- Get order details with products-- 

SELECT Orders.order_id, Users.name, Products.name AS product_name, Order_Items.quantity, Order_Items.subtotal 
FROM Orders 
JOIN Users ON Orders.user_id = Users.user_id
JOIN Order_Items ON Orders.order_id = Order_Items.order_id
JOIN Products ON Order_Items.product_id = Products.product_id;
