/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Create a Mailing List of US Customers
*/

SELECT
 FirstName,
 LastName,
 Address,
 FirstName ||' '|| LastName ||','|| Address ||','|| City ||','|| State ||','|| PostalCode AS [Mailing Address],
 LENGTH(postalcode),
 substr(postalcode, 1, 5) AS [5 Digit Postal Code]
FROM
 Customer
WHERE
 Country ='USA';
