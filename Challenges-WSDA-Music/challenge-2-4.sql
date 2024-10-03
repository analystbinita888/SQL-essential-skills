/*
 Created By: Binita Chand
 Create Date: 03/10/2024
 Description: What is the average transaction amount for 
 each year that WSDA Music has been in business?
 
Tables: Customer, Employee, Invoice
*/

SELECT 
    strftime('%Y', InvoiceDate) AS Year, 
    AVG(Total) AS AverageTransactionAmount
FROM 
    Invoice
GROUP BY 
    Year
ORDER BY 
    Year;


