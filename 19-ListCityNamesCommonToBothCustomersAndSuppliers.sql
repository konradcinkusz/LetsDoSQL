--(19.Advance-Intersect) Find the city names that appear in both customer and 
--supplier delivery address

--TODO: check data, and generate some that will meet the where condition
SELECT CityName FROM Application.Cities
WHERE CityID IN
(
	SELECT c.DeliveryCityID FROM Sales.Customers as c 
	INTERSECT
	SELECT s.DeliveryCityID FROM Purchasing.Suppliers as s
);