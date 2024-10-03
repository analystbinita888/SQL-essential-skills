/*
 Created By: Binita Chand
 Create Date: 03/10/2024
 Description: Take a look at this customer record—does it look suspicious?
 
 Customer - John Doeein with highest purchase of 1000.86 with Support Represenative - Jane Peacock
 Employee - Jane Peacock
 
Queries that perform in-depth analysis with the aim of finding employees who may have been
financially motivated to commit a crime. 
Tables: Customer, Employee, Invoice
*/


SELECT
	* 
FROM
	Customer AS c
WHERE
	c.FirstName = 'John' AND c.LastName = 'Doeein'
	

/*
  ---- RESULT ----
  CustomerId -
  FirstName - John
  LastName - Doeein
  Company - blank
  Address - blank
  City - blank
  State - blank
  Country - blank
  PostalCode - blank
  Phone - blank
  Fax - blank
  Email - blank
  SupportRepId - 3
/*
