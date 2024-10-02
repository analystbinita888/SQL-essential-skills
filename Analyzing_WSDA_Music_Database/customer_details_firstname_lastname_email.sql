-- This is a comment line
/* 
Created By: Binita Chand
Created On: 23/09/2024
Description: This query displays all the customers firstname, lastname and email addresses

*/

SELECT
 FirstName AS [Customer First Name],
 LastName AS 'Customer Last Name',
 Email AS Email
FROM
 Customer
ORDER BY
 LastName DESC,
 FirstName ASC
LIMIT 10;
