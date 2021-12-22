--QOUESTİON 1
SELECT AlbumId, COUNT(name)
FROM tracks
GROUP by AlbumId
ORDER by count(name) DESC;

--QUESTİON 2
SELECT tracks.Name, albums.Title
FROM tracks
INNER JOIN albums
on tracks.AlbumId = albums.AlbumId

--Question 3
SELECT tracks.AlbumId, albums.Title, tracks.Milliseconds
FROM tracks
INNER JOIN albums
on tracks.AlbumId = albums.AlbumId
ORDER BY Milliseconds DESC; 

--Question 4


