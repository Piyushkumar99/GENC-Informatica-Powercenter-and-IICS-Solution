-- NUMBER OF PLACES IN EACH TOWN

-- Write a query to display the town name and number of places in each town. Give an alias name as 'NUMBER_OF_PLACES'. Sort the resort based on the town name in descending order.
-- (HINT: Retrieve data from Town and Pointofinterest tables)


SELECT t.townname, COUNT(p.pointID) AS NUMBER_OF_PLACES FROM Town t
JOIN Pointofinterest p ON t.townID=p.townID
GROUP BY t.townname
ORDER BY t.townname DESC;