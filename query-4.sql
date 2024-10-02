
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: How many invoices do we have that are exactly $1.98 or $3.98?
*/

SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 total IN (1.98, 3.96)
ORDER BY
 InvoiceDate