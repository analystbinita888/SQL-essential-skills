
/*
 Created By: Binita Chand
 Create Date: 23/09/2024
 Description: Get all invoices that are greater than 1.98 from any cities whose name start with P or starts with D?
 
 PEMDAS - Parenthesis, Exponents, Multiplication/Division, Addition/Subtraction
 BEMDAS - Brackets, Exponents, Multiplication/Division, Addition/Subtraction
*/


SELECT 
 InvoiceDate,
 BillingAddress,
 BillingCity,
 total
FROM
 Invoice
WHERE
 total > 1.98 AND (BillingCity LIKE 'P%' OR BillingCity LIKE 'D%')
ORDER BY
 InvoiceDate