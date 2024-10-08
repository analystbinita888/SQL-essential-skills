
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: How many invoices were billed to Brussels, Orlando or Paris?
*/

SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 BillingCity IN ('Brussels', 'Orlando', 'Paris')
ORDER BY
 InvoiceDate
