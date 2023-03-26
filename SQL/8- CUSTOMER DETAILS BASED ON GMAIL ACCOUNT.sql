-- CUSTOMER DETAILS BASED ON GMAIL ACCOUNT

-- Write a query to display the customer details who have a gmail account. Sort the result set based on the customer name in descending order.
-- (HINT: Retrieve data from Customers Table. Data is Case Sensitive)


SELECT * FROM Customers
WHERE Email_id LIKE '%@gmail.com'
ORDER BY Cust_name DESC;