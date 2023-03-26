-- Update Revised Cabincost

-- Write a query to update the revised cabin cost of Cabin id 1 and 3 which have been increased by $1000 from the current rate.
-- [Sample Data: rate=100]


UPDATE CabinCost
SET rate=rate+1000
WHERE cabinID =1;

UPDATE CabinCost
SET rate=rate+1000
WHERE cabinID =3;