/* 
 Created By: Binita Chand
 Create Date: 2024/09/27
 Description: Write a SQL query that identifies tracks that have never been sold. 
 Your query should return a list of these tracks, along with their composers and the genre.

Result:
Your report should include: a  list that includes the Track ID, 
Track Name, Composer, and Genre for each track that has never been sold.

Track ID field - shows a unique number for each track
Track Name field - lists the titles of songs or pieces of music
Composer field - mentions who created the music
Genre field - indicates the style or category of the music, like rock or classical 
The results should be ordered by Track Name in ascending order.

Constraints and Hints:
- Tables to be included: Track, InvoiceLine, Genre
- Each table should be aliased as follows:
  Track = t
  InvoiceLine = li
  Genre = g
- use a subquery to filter out tracks that appear in the InvoiceLine table
- Use the DISTINCT keyword to be sure that your subquery only considers unique track IDs from the InvoiceLine table
- join the Track table with the Genre table to include the genre of each track

*/


SELECT
	t.TrackID AS [Track ID],
	t.Name AS [Track Name],
	t.Composer,
	g.Name AS [Genre]
FROM
	Track AS t
	JOIN Genre AS g ON t.GenreId = g.GenreId
WHERE 
	t.TrackId NOT IN (
		SELECT DISTINCT li.TrackId
		FROM InvoiceLine as li
	)
ORDER BY
	"Track Name" ASC
