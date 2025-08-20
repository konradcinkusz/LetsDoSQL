--(9.Intermediate)Find customer categories with more than 50 customers

SELECT CC.CustomerCategoryName, COUNT(*) AS NumCustomers
FROM Sales.Customers as C
JOIN Sales.CustomerCategories as CC
	ON C.CustomerCategoryID = CC.CustomerCategoryID
GROUP BY CC.CustomerCategoryName
Having COUNT(*) > 50