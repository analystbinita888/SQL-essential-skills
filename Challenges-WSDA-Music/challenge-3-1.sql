/*
 Created By: Binita Chand
 Create Date: 03/10/2024
 Description: Get a list of employees who exceeded the average transaction amount from
sales they generated during 2011 and 2012.

Queries that perform in-depth analysis with the aim of finding employees who may have been
financially motivated to commit a crime. 
Tables: Customer, Employee, Invoice
*/

SELECT
	e.FirstName AS Employee_FirstName,
	e.LastName AS Employee_LastName,
	Sum(i.Total) AS Total_Sales
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
AND
	i.total > (
		SELECT
			Round(Avg(Total), 2) AS Avg_Transaction_Amount
		FROM 
			Invoice
		WHERE
		InvoiceDate >= '2011-01-01' AND InvoiceDate <='2012-12-31'
			)
GROUP BY
	e.FirstName,
	e.LastName
ORDER BY e.LastName;



