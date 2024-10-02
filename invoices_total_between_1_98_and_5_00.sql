
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: How many invoices exist between $1.98 and $5.00
*/

SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 total BETWEEN 1.98 AND 5.00
ORDER BY
 InvoiceDate
