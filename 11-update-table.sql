

--ALTER TABLE employers
--MODIFY COLUMN yearly_revenue FLOAT(5,2); --for mysql


--ALTER TABLE employers
--ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT; --FOR postgresql


--ALTER TABLE users
--ALTER COLUMN full_name SET DATA TYPE VARCHAR(300); --for postgres


ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300);