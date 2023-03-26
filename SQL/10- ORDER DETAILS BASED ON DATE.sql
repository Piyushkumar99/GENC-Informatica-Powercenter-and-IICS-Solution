-- ORDER DETAILS BASED ON DATE

-- Write a query to display the order id, customer id, order date, delivery date of the orders where the order date and delivery date is not the same date. Sort the result based on the customer id in descending order.
-- (HINT : Retrieve data from Orders table)


SELECT Order_id, Cust_id, Order_date, Delivery_date FROM Orders
WHERE Order_date != Delivery_date
ORDER BY Cust_id DESC;