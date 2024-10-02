/* 
 Created By: Binita Chand
 Create Date: 2024/09/27
 Description: Views
*/

CREATE VIEW V_AvgTotal AS
SELECT
	round(avg(total), 2) AS [Average Total]
FROM
	Invoice