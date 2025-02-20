-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
SELECT * FROM Customers WHERE FirstName = 'Norby';
SELECT * FROM Reservations;

DELETE FROM Reservations WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE FirstName = 'Norby');