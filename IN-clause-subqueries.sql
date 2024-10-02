/* 
 Created By: Binita Chand
 Create Date: 2024/09/27
 Description: Returning multiple values from a subquery
*/

SELECT
 InvoiceDate,
 BillingAddress,
 BillingCity
FROM
 Invoice
WHERE
 InvoiceDate IN
(SELECT
  InvoiceDate
 FROM
  Invoice
 WHERE
  InvoiceId IN (251, 252, 254))