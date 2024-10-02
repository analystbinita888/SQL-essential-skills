/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Nesting Functions | What are our all time global sales?
*/

SELECT 
 SUM(Total) AS [Total Sales],
 round(AVG(Total), 2) AS [Average Sales],
 MAX(Total) AS [Maximum Sale],
 MIN(Total) AS [Minimum Sale],
 COUNT(*) AS [Sales Count]
FROM
 Invoice
