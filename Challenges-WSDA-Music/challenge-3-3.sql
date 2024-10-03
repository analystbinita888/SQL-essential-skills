/*
 Created By: Binita Chand
 Create Date: 03/10/2024
 Description: List the customers that Jane Peacock supported.
 
Queries that perform in-depth analysis with the aim of finding employees who may have been
financially motivated to commit a crime. 
Tables: Customer, Employee, Invoice
*/


SELECT
	c.FirstName AS Customer_FirstName,
	c.LastName AS Customer_LastName
FROM
	Customer AS c
INNER JOIN 
	Employee AS e
ON c.SupportRepId = e.EmployeeId
WHERE
	e.FirstName = 'Jane' AND e.LastName = 'Peacock'
ORDER BY
	Customer_FirstName,
	Customer_LastName



