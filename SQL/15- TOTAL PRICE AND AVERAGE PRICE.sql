-- TOTAL PRICE AND AVERAGE PRICE

-- Write a query to display the Cake Type, Total price and average price of the cakes. Give an alias name as 'TOTAL_PRICE' and 'AVG_PRICE' respectively. Sort the result set based on ascending order of the Total_Price.
-- (HINT: Retrieve data from Cakes table. Use price_per_kg for price calculation)


SELECT Cake_type, SUM(Price_Per_Kg) AS TOTAL_PRICE, 
AVG(Price_Per_Kg) AS AVG_PRICE FROM Cakes
GROUP BY Cake_type
ORDER BY TOTAL_PRICE;