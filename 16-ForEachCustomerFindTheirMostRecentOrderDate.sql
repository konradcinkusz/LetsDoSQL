--(16.Advance)List each customer's name and the date of their latest order.

--Correlated subquery for each customer row which will find the MAX(ORDERDate)

SELECT C.CustomerName,
	(
		Select MAX(o.OrderDate)
		From Sales.Orders as o
		Where o.CustomerID = C.CustomerID
	) as LastOrderDate
From Sales.Customers as C;