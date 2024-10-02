/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Calculate the ages of all employees
*/

SELECT
 LastName,
 FirstName,
 BirthDate,
 strftime('%Y-%m-%d', BirthDate) AS [BirthDate No TimeCode],
 strftime('%Y-%m-%d', 'now') AS [Present Date],
 strftime('%Y-%m-%d', 'now') - strftime('%Y-%m-%d', BirthDate) AS [Current Age]
FROM
 Employee
