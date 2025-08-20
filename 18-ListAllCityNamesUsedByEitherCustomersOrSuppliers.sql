--(18.Advance-Intersect) Retrive unique city names that appear as a delivery city for 
--customers or suppliers

--UNION  to combine city IDs from both sources

Select distinct CityName From Application.Cities
Where CityID IN 
(
	Select DeliveryCityID From Sales.Customers
	UNION
	Select DeliveryCityID From Purchasing.Suppliers
)