-- CAKES NAME WITH FIRST LETTER 'C'

-- Write a query to display the Cake name that starts with the letter 'C' and is priced more than 800 dollar. Sort the result set in descending order based on price.
-- (HINT : Retrieve data from Cakes Table. Data is case sensitive) 


SELECT Cake_name FROM Cakes
WHERE Cake_name LIKE 'C%'
AND Price_Per_Kg > 800
ORDER BY Price_Per_Kg DESC;