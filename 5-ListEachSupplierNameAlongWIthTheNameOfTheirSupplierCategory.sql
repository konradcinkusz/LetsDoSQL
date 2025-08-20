--(5.Beginner)List each supplier's name along with the name of the supplier category
--they belong to

SELECT s.SupplierID, sc.SupplierCategoryName
FROM Purchasing.Suppliers AS s
LEFT JOIN Purchasing.SupplierCategories AS sc
	ON s.SupplierCategoryID = sc.SupplierCategoryID