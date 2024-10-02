
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: Get all the invoices that were billed after 2010-05-22 and have a total of less than 3.00?
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
 DATE(InvoiceDate) > '2010-05-22' AND total < 3.00
ORDER BY
 InvoiceDate
