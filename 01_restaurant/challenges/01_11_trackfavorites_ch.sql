-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
SELECT * FROM Customers WHERE FirstName = 'Cleo';

UPDATE Customers 
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Cleo');
-- If(@@ROWCOUNT=0)
-- INSERT INTO CustomerDishes (CustomerID, DishID)
-- VALUES ((SELECT CustomerID FROM Customers WHERE FirstName = 'Cleo'), (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad'));

