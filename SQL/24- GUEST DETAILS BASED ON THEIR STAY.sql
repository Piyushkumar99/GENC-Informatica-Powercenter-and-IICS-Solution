-- GUEST DETAILS BASED ON THEIR STAY

-- Write a query to display the unique guest id, guest name, phone number and address of all the guest who stayed in the resort for more than 5 days. Sort the result based on descending order of guest name.
-- (HINT: Retrieve data from Guest and Booking tables.Use fromdate and todate)


SELECT DISTINCT(g.guestID), g.name, g.phone, g.address FROM Guest g
JOIN Booking b ON g.guestID=b.guestID
WHERE DATE(b.todate)-DATE(b.fromdate)>5
GROUP BY g.guestID
ORDER BY g.name DESC;