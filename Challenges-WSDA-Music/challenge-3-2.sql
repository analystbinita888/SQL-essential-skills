/*
 Created By: Binita Chand
 Create Date: 03/10/2024
 Description: Create a Commission Payout column that displays each employee’s commission
based on 15% of the sales transaction amount.

Queries that perform in-depth analysis with the aim of finding employees who may have been
financially motivated to commit a crime. 
Tables: Customer, Employee, Invoice
*/


SELECT
	e.FirstName,
	e.LastName,
	Sum(i.Total) AS Total_Sales,
	Round(Sum(i.Total) *.15, 2) AS Commission_Payout
FROM
	Invoice i
INNER JOIN
	Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN
	Employee e
ON e.EmployeeId = c.SupportRepId
WHERE
	InvoiceDate >= '2011-01-01' AND InvoiceDate <='2012-12-31'
GROUP BY
	e.FirstName,
	e.LastName
ORDER BY 
	e.LastName;



