/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Grouping in SQL | What are the average invoice totals by city?
*/ 

SELECT
 BillingCity,
 round(avg(total), 2)
FROM
 Invoice
GROUP BY
 BillingCity
ORDER BY
 BillingCity;