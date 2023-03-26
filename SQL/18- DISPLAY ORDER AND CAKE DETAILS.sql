-- DISPLAY ORDER AND CAKE DETAILS

-- Write a query to display the cake id, cake name, price, quantity and order id of all the cakes available in the cake table. Sort the result based on order id in ascending order and cake id in descending order.
-- (HINT:Retrieve data from Cakes and Order_details tables)


SELECT c.Cake_id, c.Cake_name, c.Price_Per_Kg, o.Quantity, o.Order_id
FROM Cakes c
LEFT JOIN Order_Details o ON c.Cake_id=o.Cake_id
ORDER BY o.Order_id, c.Cake_id DESC;