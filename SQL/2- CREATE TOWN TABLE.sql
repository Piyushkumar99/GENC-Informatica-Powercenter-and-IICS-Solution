-- CREATE TOWN TABLE

-- Write a query to create a Town table with constraints mentioned.


CREATE TABLE Town (
	townID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    townname VARCHAR(30),
    state VARCHAR(30),
    longitude VARCHAR(30),
    latitude VARCHAR(30),
    summertemp INT,
    wintertemp INT,
    sealevel INT
);