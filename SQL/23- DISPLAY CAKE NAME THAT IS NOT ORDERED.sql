-- DISPLAY CAKE NAME THAT IS NOT ORDERED

-- Write a query to display the cake name which is not ordered by any customer. Sort the result set based on ascending order of cake name.
-- (HINT : Retrieve data from Cakes and Order_details records)


SELECT Cake_name FROM Cakes 
WHERE Cake_id NOT IN(SELECT Cake_id FROM Order_Details)
ORDER BY Cake_name;