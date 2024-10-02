
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: How many invoices were billed on 2010-05-22 00:00:00?
*/

SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 -- InvoiceDate = '2010-05-22 00:00:00'
 DATE(InvoiceDate) = '2010-05-22'
ORDER BY
 InvoiceDate
