-- GUEST DETAILS WHO MAKE MORE THAN 1 BOOKING

-- Write a query to display the guest id,name,phone number and country of all the guests who have made more than 1 booking. Sort the result based on ascending order of guest name.
-- (HINT: Retrieve data from Guest and Booking tables)


SELECT g.guestID, g.name, g.phone, g.country FROM Guest g
JOIN Booking b ON g.guestID=b.guestID
GROUP BY b.guestID
HAVING COUNT(b.guestID)>1
ORDER BY g.name;