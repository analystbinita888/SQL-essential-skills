/* 
 Created By: Binita Chand
 Create Date: 2024/09/25
 Description: JOINS ALIAS
*/

SELECT
 *
FROM
 Invoice AS i
INNER JOIN
 Customer AS c
ON
 i.CustomerId = c.CustomerId
ORDER BY
 c.CustomerId
