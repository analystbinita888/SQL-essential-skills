/* 
 Created By: Binita Chand
 Create Date: 2024/09/25
 Description: JOINS
*/

SELECT
 *
FROM
 Invoice
INNER JOIN
 Customer
ON
 Invoice.CustomerId = Customer.CustomerId
ORDER BY
 Customer.CustomerId