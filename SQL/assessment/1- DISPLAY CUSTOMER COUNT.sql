-- DISPLAY CUSTOMER COUNT

-- Please follow the instructions given below. Write a query to display the customer name and number of movies issued to that customer sorted by customer name in ascending order.  If a customer has not been issued with any movie then display 0. Hint: Use MOVIE_COUNT as an alias name for the number of movies issued.


SELECT cm.customer_name, COUNT(ci.issue_id) AS MOVIE_COUNT FROM customer_master cm
LEFT JOIN customer_issue_details ci ON cm.customer_id=ci.customer_id
GROUP BY cm.customer_name
ORDER BY cm.customer_name ASC;