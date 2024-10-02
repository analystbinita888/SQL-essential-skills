
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: Get all the invoices whose billing city starts with P or with D?
*/

SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 BillingCity LIKE 'P%' OR BillingCity LIKE 'D%'
ORDER BY
 InvoiceDate
