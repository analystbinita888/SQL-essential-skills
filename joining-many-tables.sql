/* 
 Created By: Binita Chand
 Create Date: 2024/09/25
 Description: JOINS on more than two tables | What employees are responsible for the 10 highest individual sales?
*/

SELECT
 e.FirstName,
 e.LastName,
 e.EmployeeId,
 c.FirstName,
 c.LastName,
 c.SupportRepId,
 i.CustomerId,
 i.total
FROM
 Invoice AS i
INNER JOIN
 Customer AS c
ON
 i.CustomerId = c.CustomerId
INNER JOIN
 Employee as e
ON
 c.SupportRepId = e.EmployeeId
ORDER BY
 i.total DESC
LIMIT 10;

