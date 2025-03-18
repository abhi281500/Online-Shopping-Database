-- Get all orders with customer details
SELECT 
    Orders.order_id,
    Users.name,
    Users.email,
    Orders.total_amount,
    Orders.status
FROM
    Orders
        JOIN
    Users ON Orders.user_id = Users.user_id;
