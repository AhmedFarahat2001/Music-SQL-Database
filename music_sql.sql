#query1
SELECT c.city customer_city, sum(i.total) invoice_total
FROM customer c
JOIN Invoice i
ON i.customerId = c.customerId
GROUP BY 1
ORDER BY 2 DESC;

#query2
SELECT a.ArtistId Artist_id,
       a.Name  Artist_name,
	   count(t.name) songs
	   
FROM Artist a
JOIN Album al
ON a.ArtistId = al.ArtistId
JOIN Track t
ON t.AlbumId = al.AlbumId
JOIN Genre g
ON g.GenreId = t.GenreId
WHERE g.name = 'Rock'
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;

#query3
SELECT a.Name artist_name , sum(Unit_price * quantity) total_sales
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId =il.InvoiceId
JOIN Track t
ON il.TrackId = t.TrackId
JOIN Album al
ON t.AlbumId = al.AlbumId
JOIN Artist a
ON al.ArtistId = a.ArtistId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
