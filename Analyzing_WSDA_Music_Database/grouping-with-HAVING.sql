/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Grouping in SQL with HAVING | What are the average invoice totals greater than $5.00?
*/ 

SELECT
 BillingCity,
 round(avg(total), 2)
FROM
 Invoice
GROUP BY
 BillingCity
HAVING
 avg(total) > 5
ORDER BY
 BillingCity;
 



