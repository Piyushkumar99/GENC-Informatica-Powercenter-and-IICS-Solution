-- GUEST DETAILS BASED ON DATE

-- Write a query to display the name and address of all the guest who all stayed in 20-December- 2019. Sort the result based on the guest id in descending order .
-- (HINT: Retrieve data from Booking and Guest Tables. Data is case sensitive. Use fromdate)


SELECT g.name, g.address FROM Guest g
JOIN Booking b ON g.guestID=b.guestID
WHERE b.fromdate LIKE '2019-12-20'
ORDER BY g.guestID DESC;