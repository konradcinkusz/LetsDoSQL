--(14.Advance)Calculate the total extended price of all invoices for each customer
--for invoices dated in 2013. Return the customer name and total amount

SELECT c.CustomerName, SUM(il.ExtendedPrice) as TotalAmount2013
FROM Sales.InvoiceLines as il
JOIN Sales.Invoices as i
	on il.InvoiceID = i.InvoiceID
JOIN Sales.Customers as c
	on i.CustomerID = c.CustomerID
WHERE YEAR(i.InvoiceDate) = '2013'
GROUP BY c.CustomerName
Order BY TotalAmount2013 DESC;