/*
 Created By: Binita Chand
 Create Date: 03/10/2024
 Description: Get a list of customers, sales reps, and total transaction amounts for each
customer between 2011 and 2012.
 
Tables: Customers, Employees, Invoices
*/

SELECT
	c.FirstName AS Customer_FirstName,
	c.LastName AS Customer_LastName,
	e.FirstName AS Employee_FirstName,
	e.LastName AS Employee_LastName,
	i.Total AS Total_Sales
FROM
	Invoice AS i
INNER JOIN
	Customer AS c ON i.CustomerId = c.CustomerId
INNER JOIN 
	Employee AS e ON e.EmployeeId = c.SupportRepId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <='2012-12-31'
ORDER BY
	i.Total DESC
	
