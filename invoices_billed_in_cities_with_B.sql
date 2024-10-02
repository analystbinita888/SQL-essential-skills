
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: How many invoices were billed in cities that have a B anywhere in its name?
*/

SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 BillingCity LIKE '%B%'
ORDER BY
 InvoiceDate
