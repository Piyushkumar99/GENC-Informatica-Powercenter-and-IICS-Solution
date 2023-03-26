-- DSIPLAY MOVIES NAMES WITH NUMBER OF TIMES

-- Please follow the instructions given below.
-- Write a query to display movie names and the number of times that movie is issued to customers. Incase movies are never issued to customers display 'number of times' as 0. Display the details in sorted order based on the number of times (in descending order) and then by movie name (in ascending order). The Alias name for the number of movies issued is ISSUE_COUNT.


SELECT m.movie_name, COUNT(i.movie_id) AS ISSUE_COUNT FROM movies_master m
LEFT JOIN customer_issue_Details i ON m.movie_id=i.movie_id
GROUP BY m.movie_name
ORDER BY ISSUE_COUNT DESC, m.movie_name ASC;