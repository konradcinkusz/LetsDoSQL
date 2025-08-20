--(6.Intermediate) Find the total number of orders placed by each customer
--Return the customer name and the count of orders

SELECT c.CustomerName, COUNT(o.OrderId) AS TotalOrders
FROM Sales.Customers as c
LEFT JOIN Sales.Orders as o
	ON c.CustomerID = o.CustomerID
Group By c.CustomerName
ORDER BY TotalOrders