/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Subqueries in the SELECT | 
 How is each individual city performing against the global average sales?
*/

SELECT
 BillingCity,
 round(avg(total), 2) AS [City Average],
 (select round(avg(total), 2) from Invoice) AS [Global Average]
FROM
 Invoice
GROUP BY
 BillingCity
ORDER BY
 BillingCity;