--(15.Advance)Compute total revenue for each stock item, then use RANK() window
--function to rank items by revenue. List the top 3 ranked items with
--their revenue.

--The RANK() window function assigns rank values over the sorted result

WITH RankedItems as (
	SELECT 
		si.StockItemName,
		RANK() OVER (ORDER BY SUM(il.Quantity * il.UnitPrice) DESC) as RevenueRank,
		SUM(il.Quantity * il.UnitPrice) as TotalRevenue
	FROM Sales.InvoiceLines as il
	JOIN Warehouse.StockItems as si
		ON il.StockItemID = si.StockItemID
	GROUP BY si.StockItemName
)
--SELECT Top 3 RevenueRank, StockItemName, TotalRevenue
SELECT StockItemName, TotalRevenue
FROM RankedItems
Where RevenueRank <= 3;