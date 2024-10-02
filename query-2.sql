/* 
 How many customers purchased two songs at $0.99 each?
*/

/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: Customers who purchased two songs at $0.99 each
*/

SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 total = 1.98
ORDER BY
 InvoiceDate