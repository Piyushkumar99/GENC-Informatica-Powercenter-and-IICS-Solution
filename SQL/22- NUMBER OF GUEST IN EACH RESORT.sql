-- NUMBER OF GUEST IN EACH RESORT

-- Write a query to display the resort id, resort name, number of guests booked in each resort and star rating. Give an alias name to number of guests booked as 'NO_OF_GUEST'. Sort the result set based on the resort id in the descending order.
-- (HINT: Retrieve data from Resort and Booking tables)


SELECT r.resortID, r.resortName, COUNT(b.bookingID) AS NO_OF_GUEST, r.starRating FROM Resort r
JOIN Booking b ON r.resortID=b.resortID
GROUP BY r.resortID, r.resortName
ORDER BY r.resortID DESC;