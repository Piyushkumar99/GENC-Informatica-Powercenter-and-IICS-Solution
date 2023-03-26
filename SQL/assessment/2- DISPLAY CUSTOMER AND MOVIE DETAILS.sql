-- DISPLAY CUSTOMER AND MOVIE DETAILS

-- Please follow the instructions given below. Write a query to display serial number, issue id, customer id, customer name, movie id and movie name of all the videos that are issued and display in ascending order based on serial number.
-- Serial number can be generated from the issue id, that is the last two characters of issue id is the serial number.
-- For Example Assume the issue id is I00005 then the serial number is 05
-- Hint: Alias name for serial number is 'SERIAL_NO'


SELECT RIGHT(ci.issue_id, 2) AS SERIAL_NO, ci.issue_id,
	cm.customer_id, cm.customer_name,
    m.movie_id, m.movie_name FROM customer_issue_details ci
INNER JOIN customer_master cm ON cm.customer_id=ci.customer_id
INNER JOIN movies_master m ON m.movie_id=ci.movie_id
ORDER BY SERIAL_NO ASC;