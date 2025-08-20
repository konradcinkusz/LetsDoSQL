--(20.Intermediate)Retrieve every stock item along with its stock group name.
--Include items with no group and groups with no items.

SELECT SI.StockItemName, SG.StockGroupName
FROM Warehouse.StockItems as SI
FULL OUTER JOIN Warehouse.StockItemStockGroups AS SIG
 ON SI.StockItemID = SIG.StockItemID
FULL OUTER JOIN Warehouse.StockGroups AS SG
 ON SIG.StockGroupID = SG.StockGroupID