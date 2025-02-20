-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

-- Subqueries
SELECT * FROM Customers WHERE CustomerID IN (
  SELECT CustomerID FROM Reservations 
  WHERE Date LIKE '%06-14%' AND PartySize = 4
);

-- Joins
SELECT Customers.FirstName, Customers.LastName
FROM Customers INNER JOIN Reservations
ON Customers.CustomerID = Reservations.CustomerID
WHERE Date LIKE '%06-14%' AND PartySize = 4