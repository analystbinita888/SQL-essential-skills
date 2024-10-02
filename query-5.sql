
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: How many invoices were billed to Brussels?
*/

SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 BillingCity = 'Brussels'
ORDER BY
 InvoiceDate