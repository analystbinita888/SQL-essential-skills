/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Grouping by more than one field at a time |
Whare are the average invoice totals by billing country and city?
*/ 

SELECT
 BillingCountry,
 BillingCity,
 round(avg(total), 2)
FROM
 Invoice
GROUP BY
 BillingCountry, BillingCity
ORDER BY
 BillingCountry, BillingCity;

 




