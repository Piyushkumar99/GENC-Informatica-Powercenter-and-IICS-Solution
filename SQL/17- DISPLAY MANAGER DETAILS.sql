-- DISPLAY MANAGER DETAILS

-- Write a query to display the manager's name of all the resorts as given in the sample output. Give the alias name as MANAGER_DETAILS. Sort the result set based on the resortname in ascending order.

-- SAMPLE DATA
-- MANAGER_DETAILS
-- name is the manager of resortname

-- SAMPLE OUTPUT:
-- MANAGER_DETAILS
-- JESSICA MARK is the manager of GRAND MOUNT
-- ( Hint : Retrieve data from Manager and Resort tables. Data is Case Sensitive)


SELECT CONCAT(m.name,' is the manager of ',r.resortName) AS MANAGER_DETAILS
FROM Manager m
JOIN Resort r ON m.managerID=r.managerID
ORDER BY r.resortName;