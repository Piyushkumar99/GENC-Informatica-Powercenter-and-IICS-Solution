-- DISPLAY BOOKING DETAILS BASED ON DATE

-- Write a query to display the booking Id, guest name, resort name of the guest who all stayed in the month of April 2019. Sort the result based on descending order of booking id.
-- (HINT: Retrieve data from  Booking,Guest and Resort Tables. Use fromdate from booking table)


SELECT b.bookingID, g.name, r.resortName FROM Guest g
JOIN Booking b ON g.guestID=b.guestID
JOIN Resort r ON r.resortID=b.resortID
WHERE MONTH(b.fromdate) = 4 AND YEAR(b.fromdate) = 2019
ORDER BY b.bookingID DESC;