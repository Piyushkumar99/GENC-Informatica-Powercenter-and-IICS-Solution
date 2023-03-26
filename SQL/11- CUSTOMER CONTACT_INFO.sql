-- CUSTOMER CONTACT_INFO

-- Write a query to display the Customer id, customer name and phone number of the customer. If the phone number is not available, then display the email id. Give an alias as Contact_Info.  Sort the result set based on the customer name in ascending order.
-- (HINT : Retrieve data from Customers table.)


SELECT Cust_id, Cust_name, 
CASE 
WHEN Phone_no IS NOT NULL THEN Phone_no
ELSE Email_id
END AS Contact_Info
FROM Customers
ORDER BY Cust_name;