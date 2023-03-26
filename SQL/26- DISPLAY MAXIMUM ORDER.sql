-- DISPLAY MAXIMUM ORDER

-- Write a query to display the customer id and the maximum number of orders placed by the customer. Give an alias name as 'MAX_COUNT'. 
-- (HINT : Retrieve data from Orders table)


SELECT Cust_id, COUNT(Order_id) FROM Orders
GROUP BY Cust_id HAVING COUNT(Order_id)=
(
SELECT MAX(total_order) FROM(
SELECT COUNT(Order_id) AS total_order FROM Orders GROUP BY Cust_id)a
);