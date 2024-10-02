/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Grouping in SQL with WHERE| What are the average invoice totals by 
 city for only the cities that start with L? 

*/ 

SELECT
 BillingCity,
 round(avg(total), 2)
FROM
 Invoice
WHERE 
 BillingCity LIKE 'L%'
GROUP BY
 BillingCity
ORDER BY
 BillingCity;