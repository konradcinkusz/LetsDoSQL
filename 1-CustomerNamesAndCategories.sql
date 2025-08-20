--(1.Beginner)List each customer's name along with the name of their customer category
SELECT 
  c.CustomerName, 
  cc.CustomerCategoryName
FROM Sales.Customers AS c
LEFT JOIN Sales.CustomerCategories AS cc
  ON c.CustomerCategoryID = cc.CustomerCategoryID;