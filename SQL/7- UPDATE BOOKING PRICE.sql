-- UPDATE BOOKING PRICE 

-- Write a query to  update the total charge and pet count of the guest who stayed in Resort Id 1004 where pet count is increased by 2 and should pay an additional amount of 1500  from the current total charge of the booking.


UPDATE Booking
SET petcount = petcount+2, totalcharge=totalcharge+1500
WHERE resortID = 1004;