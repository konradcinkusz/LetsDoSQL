--(11.Advance) Using a window function, list the top 3 stock items (per name)
--that have the highest total quantity ordered across all sales.
--Include the total quantity and rank them

--1.subquery; 2.sum quantity forom orderlines for each stock item
--3.rank items 
--4.filtering

WITH ItemTotals as (
	SELECT 
		ol.StockItemID, 
		SUM(ol.Quantity) as TotalQuantity, 
		RANK() OVER (Order by SUM(ol.Quantity) DESC) as QuantityRank
	FROM Sales.OrderLines as ol
	GROUP BY ol.StockItemID
)
SELECT si.StockItemName,
it.TotalQuantity,
it.QuantityRank
FROM ItemTotals as it
JOIN Warehouse.StockItems as si
	ON it.StockItemID = si.StockItemID
WHERE it.QuantityRank <= 3
ORDER BY it.QuantityRank;