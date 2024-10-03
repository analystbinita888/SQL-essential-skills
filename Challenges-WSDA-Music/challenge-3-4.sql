/*
 Created By: Binita Chand
 Create Date: 03/10/2024
 Description: List the customers that Jane Peacock supported. And Which customer made the highest purchase?
 Which Customer made the highest purchase?
 
Queries that perform in-depth analysis with the aim of finding employees who may have been
financially motivated to commit a crime. 
Tables: Customer, Employee, Invoice
*/


SELECT
	c.FirstName AS Customer_FirstName,
	c.LastName AS Customer_LastName,
	e.FirstName AS Employee_FirstName,
	e.LastName AS Employee_LastName,
	Sum(i.Total) AS Total_Sales,
	Round(Sum(i.Total) *.15, 2) AS Commission_Payout
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON i.CustomerId = c.CustomerId
INNER JOIN
	Employee AS e
ON e.EmployeeId = c.SupportRepId
WHERE
	(InvoiceDate >= '2011-01-01' AND InvoiceDate <='2012-12-31')
AND (e.FirstName ='Jane' AND e.LastName = 'Peacock')
GROUP BY
	c.FirstName,
	c.LastName
ORDER BY 
	Total_Sales DESC;



