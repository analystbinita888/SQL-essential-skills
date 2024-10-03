/*
 Created By: Binita Chand
 Create Date: 02/10/2024
 Description: How many transactions took place between the years 2011 and 2012?
 Answer: 167
 
Tables: Customers, Employees, Invoices
*/

SELECT 
	COUNT(*)
FROM
	Invoice
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <='2012-12-31';
	
