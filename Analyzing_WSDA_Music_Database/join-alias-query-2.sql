/* 
 Created By: Binita Chand
 Create Date: 2024/09/25
 Description: JOINS ALIAS
*/

SELECT
 c.LastName,
 c.FirstName,
 i.invoiceId,
 i.CustomerId,
 i.InvoiceDate,
 i.total
FROM
 Invoice AS i
INNER JOIN
 Customer AS c
ON
 i.CustomerId = c.CustomerId
ORDER BY
 c.CustomerId






