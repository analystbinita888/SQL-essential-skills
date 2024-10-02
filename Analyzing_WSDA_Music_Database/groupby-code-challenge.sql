/* 
 Created By: Binita Chand
 Create Date: 2024/09/26
 Description: Create a SQL report that calculates the average spending amount of customers in each city.

RESULT:
Your report should include: a list containing two columns: City and AverageSpending by customers in those cities.

- City field = contains the names of cities
- AverageSpending field - contains average amount spent by customers
- the list should be in ascending order by city name

Constraints and Hints:
- table to be included Invoice and aliased as i
- results must be grouped by city
- the average spending amount should be rounded to 2 decimal places

*/ 

SELECT 
 i.BillingCity AS City,
 round(avg(i.Total), 2) AS AverageSpending
FROM 
 Invoice AS i
GROUP BY 
 City
ORDER BY 
 City;

 




