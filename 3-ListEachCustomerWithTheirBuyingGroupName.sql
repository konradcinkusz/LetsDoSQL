--(3.Beginner)Find all customers from Sales.Customers along with the name 
--of the Sales.BuyingGroups. Some customer may not belong to buying group,
--use LEFT JOIN so that customers without a group still appear.

SELECT C.CustomerName, B.BuyingGroupName
FROM Sales.Customers as C
LEFT JOIN Sales.BuyingGroups AS B
 ON C.BuyingGroupID = B.BuyingGroupID