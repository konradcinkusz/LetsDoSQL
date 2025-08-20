--(13.Beginner)Retrieve the five most recent sales orders (by order date)

SELECT TOP 5 
 OrderId, CustomerID, OrderDate
FROM Sales.Orders
Order BY OrderDate DESC;