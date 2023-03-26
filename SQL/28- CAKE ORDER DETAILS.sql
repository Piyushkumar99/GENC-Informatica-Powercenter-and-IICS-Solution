-- CAKE ORDER DETAILS

-- Write a query to display the cake name,cake flavour and price of all the cake which was ordered less than 5 times. Sort the result based on the ascending order of price.
-- (HINT : Retrieve data from Cakes and Order_details table)


SELECT c.Cake_name, c.Cake_flavour, c.Price_Per_Kg FROM Cakes c
JOIN Order_Details o ON p.Cake_id=o.Cake_id
GROUP BY o.Cake_id
HAVING COUNT(o.Cake_id)<5
ORDER BY c.Price_Per_Kg;