/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Write a SQL query to generate a report that lists each customer along with their assigned support representative.

Result:
A list containing the first and last names of both customers and their assigned support representatives

- Customer FirstName: field contains the first names of the customers
- Customer LastName: field contains the last names of customers
- Employee FirstName: field contains the first names of support representatives
- Employee LastName: field contains the last names of support representatives
- order the results by the support representative's last name, followed by the customer's last name

Constraints and Hints
- Tables to be included --> Customer, Employee
- Tables should be aliased as follows:
 ---> Customer = c
 ---> Employee = e

Each field should be aliased as follows:
- c.FirstName = CustomerFirstName
- c.LastName = CustomerLastName
- e.FirstName = SupportRepFirstName
- e.LastName = SupportRepLastName
*/

SELECT 
 c.FirstName as CustomerFirstName,
 c.LastName as CustomerLastName,
 e.FirstName as SupportRepFirstName,
 e.LastName as SupportRepLastName
FROM 
 Customer as c
 INNER JOIN Employee e ON c.SupportRepId = e.EmployeeId
ORDER BY
 e.LastName, c.LastName 
