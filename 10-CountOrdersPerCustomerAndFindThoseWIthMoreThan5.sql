--(10.Intermediate - similar to 7.)Determine how many orders each customer has placed
-- and list only those customers with more than 5 orders

SELECT c.CustomerName, COUNT(*) as OrderCount
FROM Sales.Orders as o
JOIN Sales.Customers as c 
	ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(*) > 5
Order by OrderCount
