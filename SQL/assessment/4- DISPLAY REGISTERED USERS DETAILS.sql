-- DISPLAY REGISTERED USERS DETAILS

-- Write a query to display id,name,age,contact no of customers whose age is greater than 25 and and who have registered in the year 2012. Display contact no in the below format +91-XXX-XXX-XXXX example +91-987-678-3434 and use the alias name as "CONTACT_ISD". If the contact no is null then display as 'N/A' Sort all the records in ascending order based on age and then by name.


SELECT customer_id, customer_name, age,
CASE
WHEN contact_no IS NULL THEN 'N/A'
ELSE CONCAT('+91-', SUBSTRING(contact_no,1,3), '-', SUBSTRING(contact_no,4,3), '-', SUBSTRING(contact_no,7,4))
END AS CONTACT_ISD
FROM customer_master

WHERE age>25 AND YEAR(date_of_registration)=2012
ORDER BY age ASC, customer_name ASC;