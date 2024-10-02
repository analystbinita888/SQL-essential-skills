/* 
Write a SQL query that selects track names, composers, and unit prices, and categories each track based on its price.

Price Categories:
Budget: Tracks priced at $0.99 or less
Regular: Tracks priced between $1.00 and $1.49
Premium: Tracks priced between $1.50 and $1.99
Exclusive: Tracks priced above $1.99

Expected Columns:
TrackName - contains a list of track names
Composer - contains who composed the track
UnitPrice - contains unit cost of each track
PriceCategory - contains categories as defined above in Price Categories

The results should be ordered by the UnitPrice in ascending order.

*/

SELECT 
Name AS "Track Name",
Composer,
UnitPrice AS Price,
CASE
WHEN UnitPrice <= 0.99 THEN 'Budget'
WHEN UnitPrice > 0.99 AND UnitPrice <= 1.49 THEN 'Regular'
WHEN UnitPrice > 1.49 AND UnitPrice <= 1.99 THEN 'Premium'
ELSE 'Exclusive'
END AS PriceCategory
FROM
Track
ORDER BY
UnitPrice ASC;