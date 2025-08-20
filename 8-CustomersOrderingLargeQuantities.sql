--(8.Intermediate) Find the names of customers who have ordered more that 100
--units of any single item in and order line 
--Sales.Customers -> Sales.Orders -> Sales.OrderLines

SELECT c.CustomerName, ol.Quantity
FROM Sales.Customers as c
Join Sales.Orders as o
	ON c.CustomerID = o.CustomerID
JOIN Sales.OrderLines as ol
	ON o.OrderID = ol.OrderID
WHERE ol.Quantity > 100
ORDER BY ol.Quantity;