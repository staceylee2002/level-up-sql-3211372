-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
SELECT CustomerID FROM Customers WHERE email = 'atapley2j@kinetecoinc.com'

INSERT INTO Responses (CustomerID, PartySize) 
VALUES ((SELECT CustomerID FROM Customers WHERE email = 'atapley2j@kinetecoinc.com'), 3);