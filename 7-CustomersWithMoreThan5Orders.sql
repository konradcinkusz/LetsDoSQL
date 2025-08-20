--(7.Intermediate) List the names of customers who have placed more
--than 5 orders

SELECT c.CustomerName, COUNT(o.OrderID) as OrderCount
FROM Sales.Customers as c
JOIN Sales.Orders as o
	ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(o.OrderID) > 5
ORDER BY OrderCount