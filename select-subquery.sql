/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Subqueries | Gather data about all invoices that are less than this average?
*/

SELECT
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 total <
      (SELECT round(avg(total), 2) FROM Invoice)
ORDER BY
 total DESC