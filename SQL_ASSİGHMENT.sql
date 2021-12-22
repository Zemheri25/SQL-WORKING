-- QUESTİON 1:
SELECT COUNT(TrackId), AlbumId
FROM tracks
GROUP BY AlbumId
ORDER BY count(TrackId) DESC;

--QUESTİON 2:
SELECT tracks.Name, albums.title 
FROM albums
JOIN tracks
on albums.AlbumId = tracks.AlbumId;

-- QUESTİON 3:
SELECT albums.AlbumId, albums.Title, count(tracks.Milliseconds)
from albums
join tracks
on albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY count(tracks.Milliseconds) DESC;

--QUESTİON 4:
SELECT albums.AlbumId, albums.Title, sum(tracks.Milliseconds)
from albums
join tracks
on albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY sum(tracks.Milliseconds) DESC;

-- QUESTİON 5:
SELECT albums.Title, sum(tracks.Milliseconds)
from albums
JOIN tracks
on albums.AlbumId = tracks.AlbumId
GROUP BY albums.Title
HAVING sum(tracks.Milliseconds) > 4200000;