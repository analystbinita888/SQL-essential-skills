/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Write a SQL query that selects the customer's full name 
 and transforms their postal code into a standardized five-digit format.
 
 Result:
A list containing two columns: CustomerFullName and StandardizedPostalCode.

- CustomerFullName field: concatenates the customer's first and last name
- StandardizedPostalCode field: contains the postal code adjusted to a five-digit format
- Results should only include customers from the United States
- State the purpose of the query
- Order the results by the CustomerFullName field

--> table to be included: Customer
--> aliased as c
--> Use SQL string functions to concatenate the first and last names of the customer
--> apply SQL string functions to adjust the postal code into the required format
--> filter results to include only customer from the United States
 
*/




SELECT 
 c.FirstName||' '||c.LastName AS CustomerFullName,
 substr(c.postalcode, 1, 5) AS StandardizedPostalCode
FROM Customer AS c
WHERE c.Country = 'USA';
