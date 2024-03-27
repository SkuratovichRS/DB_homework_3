SELECT title, COUNT(genre_id) FROM albums a 
JOIN artists_albums_info aai ON a.id = aai.album_id 
JOIN artists_genres_info agi ON aai.artist_id = agi.artist_id 
GROUP BY title 
HAVING COUNT(genre_id) > 1

SELECT title FROM tracks t 
WHERE NOT EXISTS (SELECT track_id FROM tracks_collections_info tci 
				  WHERE tci.track_id = t.id)

SELECT nickname, duration FROM artists a 
JOIN artists_albums_info aai ON a.id = aai.artist_id 
JOIN tracks t ON t.album_id = aai.album_id 
WHERE duration = (SELECT min(duration) FROM tracks t2)
GROUP BY nickname, duration 

SELECT a.title , count(album_id) FROM albums a 
JOIN tracks t ON t.album_id = a.id
GROUP BY a.title  
ORDER BY count 
LIMIT 1



				  



