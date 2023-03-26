-- ORDER DETAILS BASED ON MONTH

-- Write a query to display the order id and customer id of all the orders placed in the month of 'APRIL'. Sort the result set based on customer id in ascending order and order id in descending order.
-- (HINT : Retrieve data from Orders table. Data is Case Sensitive)


SELECT Order_id, Cust_id FROM Orders
WHERE MONTH(Order_date) = 4
ORDER BY Cust_id, Order_id DESC;