-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Customers.FirstName, Customers.LastName, Customers.Email, COUNT(Orders.orderID) as OrderCount
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID
ORDER BY OrderCount DESC;
