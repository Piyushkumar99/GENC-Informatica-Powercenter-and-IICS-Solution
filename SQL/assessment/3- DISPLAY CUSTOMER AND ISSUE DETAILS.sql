-- DISPLAY CUSTOMER AND ISSUE DETAILS

-- Please follow the instructions given below. Write a query to display the issue id,issue date, customer id, customer name and contact number for videos that are issued in the year 2013.Display the records in descending order based on issue date of the video.


SELECT i.issue_id, i.issue_date, c.customer_id, c.customer_name, 
c.contact_no FROM customer_issue_details i
JOIN customer_master c ON i.customer_id=c.customer_id
WHERE YEAR(i.issue_date) = 2013
ORDER BY i.issue_date DESC; 