/* 
 Created By: Binita Chand
 Create Date: 2024/09/27
 Description: Subqueries without Aggregate functions
*/


SELECT
 InvoiceDate,
 BillingAddress,
 BillingCity,
 InvoiceId
FROM
 Invoice
WHERE
 InvoiceDate >
(SELECT
  InvoiceDate
 FROM
  Invoice
 WHERE
  InvoiceId = 251)