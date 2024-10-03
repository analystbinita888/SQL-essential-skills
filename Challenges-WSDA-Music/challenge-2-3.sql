/*
 Created By: Binita Chand
 Create Date: 03/10/2024
 Description: How many transactions are above the average transaction amount during the
same time period? (2011 and 2012)

Tips: 
-- Nested Queries
-- Find the average transaction amount between 2011 and 2012
-- Get the number of transactions above the average transaction amount
 
Tables: Customers, Employees, Invoices
*/


SELECT
	Count(Total) AS Number_Of_Transactions_Above_Avg
FROM 
	Invoice
WHERE 
	Total > (	
		SELECT
			Round(Avg(Total), 2) AS Avg_Transaction_Amount
		FROM 
			Invoice
		WHERE
			InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31'
		)
	AND InvoiceDate >= '2011-01-01' AND InvoiceDate <= '2012-12-31';
