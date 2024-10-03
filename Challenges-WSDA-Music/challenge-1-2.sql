/*
 Created By: Binita Chand
 Create Date: 02/10/2024
 Description: How much money did WSDA Music make during the same period?
 Answer - 1947.97
 
Tables: Customers, Employees, Invoices
*/

SELECT 
	SUM(Total)
FROM
	Invoice
WHERE 
	InvoiceDate >= '2011-01-01' AND InvoiceDate <='2012-12-31';
	
