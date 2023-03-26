-- ORDER DETAILS WITH TOTAL AMOUNT

-- Write a query to display the order id, customer name, cake name, order date, delivery date, price_per_kg, quantity and total amount paid by the customer. Calculate the total amount using price_per_kg and quantity. Give an alias name as 'TOT_AMT'. Sort the result based on descending order of customer name and ascending order of cake_name.
-- HINT:(Retrieve data from Customers, Cakes, Orders and Order_details tables)


SELECT o.Order_id, c.Cust_name, ca.Cake_name, o.Order_date, o.Delivery_date,
ca.Price_Per_Kg, ca.Price_Per_Kg*od.Quantity AS TOT_AMT, od.Quantity FROM Customers c

JOIN Orders o ON c.Cust_id=o.Cust_id
JOIN Order_Details od ON o.Order_id=od.Order_id
JOIN Cakes ca ON ca.Cake_id=od.Cake_id
ORDER BY c.Cust_name DESC, ca.Cake_name ASC;