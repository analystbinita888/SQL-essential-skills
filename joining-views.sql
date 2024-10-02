/* 
 Created By: Binita Chand
 Create Date: 2024/09/27
 Description: Joining Views
*/

CREATE VIEW V_Tracks_InvoiceLine AS
SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine il
INNER JOIN
	Track t ON il.TrackId = t.TrackId