-- DISPLAY MINIMUM PRICE

-- Write a query to display the Cake flavour and minimum price of the cake. Give an alias name as 'MIN_PRICE'. Sort the result set based on descending order of the cake flavour.
-- (HINT : Retrieve data from Cakes table)


SELECT Cake_flavour, MIN(Price_Per_Kg) AS MIN_PRICE FROM Cakes
GROUP BY Cake_flavour
ORDER BY Cake_flavour DESC;