-- ALTER MANAGER TABLE 

-- Refer to the given schema. Assume that the Manager table has been already created.
-- Write a query to change the data type of the field phone in Manager table to bigint(10) and rename the column as Phone_no.
-- (Note: Letters in bold represents the attribute name)


ALTER TABLE Manager
CHANGE `phone` `Phone_no` VARCHAR(15);

ALTER TABLE Manager
MODIFY Phone_no BIGINT(10);