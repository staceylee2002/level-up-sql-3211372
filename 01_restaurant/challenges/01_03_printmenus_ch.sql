-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
SELECT * FROM Dishes ORDER BY Price DESC;
-- Create a report showing appetizers and beverages.
SELECT * FROM Dishes 
WHERE Type='Appetizer' OR Type='Beverage'
ORDER BY Type;
-- Create a report with all items except beverages.
SELECT * FROM Dishes 
WHERE Type <> 'Beverage'
ORDER BY Type;