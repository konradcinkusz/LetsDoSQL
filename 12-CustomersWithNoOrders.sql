--(12.Advance)List the names of customers who have never placed and order
--we want customers not present in Sales.Orders

Select CustomerName 
FROM Sales.Customers
WHERE CustomerID NOT IN (
	Select CustomerID FROM Sales.Orders
	);