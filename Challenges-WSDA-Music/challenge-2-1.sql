/*
 Created By: Binita Chand
 Create Date: 02/10/2024
 Description: Get a list of customers who made purchases between 2011 and 2012.
 
Tables: Customers, Employees, Invoices
*/

SELECT
	c.FirstName,
	c.LastName
FROM
	Customer AS c
INNER JOIN
	Invoice AS i
ON c.CustomerId = i.CustomerId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <='2012-12-31'
	
