-- Get all products available in stock

SELECT 
    *
FROM
    Products
WHERE
    stock_quantity > 0;
