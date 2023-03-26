-- CREATE BOOKING TABLE 

-- Write a query to create a Booking table with constraints mentioned. 


CREATE TABLE Booking (
	bookingID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    guestID INT,
    resortID INT,
    cabinID INT,
    fromdate DATE,
    todate DATE,
    adultCount INT,
    childCount INT,
    petcount INT,
    totalcharge INT,
    FOREIGN KEY (guestID) REFERENCES Guest(guestID),
    FOREIGN KEY (resortID) REFERENCEs Resort(resortID),
    FOREIGN KEY (cabinID) REFERENCES Cabin(cabinID)
);