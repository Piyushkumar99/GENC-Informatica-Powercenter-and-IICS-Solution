-- REVIEW WITH GUEST DETAILS

-- Write a query to display the guest name, resort id and date of review of all the guests who are from 'CALIFORNIA'. Sort the result set based on the guest name in ascending order.
-- (HINT: Retrieve data from Guest and review tables.)


SELECT g.name, r.resortID, r.dateofreview FROM Guest g
JOIN Review r ON g.guestID=r.guestID
WHERE UPPER(g.country)='CALIFORNIA'
ORDER BY g.name;