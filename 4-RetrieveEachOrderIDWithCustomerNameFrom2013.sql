--(4.Beginnner)Retrieve each order's ID, order date, and the customer's name
--for orders in calendar year 2013

SELECT O.OrderID, O.OrderDate, C.CustomerName
FROM Sales.Orders as O
JOIN Sales.Customers AS C
 ON O.CustomerID = C.CustomerID
WHERE YEAR(O.OrderDate) = 2013