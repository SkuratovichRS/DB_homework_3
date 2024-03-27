SELECT COUNT(artist_id), title  FROM artists_genres_info agi
JOIN genres g  ON g.id = agi.genre_id 
GROUP BY title 

SELECT COUNT(t.id), a.title FROM tracks t 
JOIN albums a ON a.id = t.album_id 
WHERE release_year = 2019 OR release_year = 2020
GROUP BY a.title  

SELECT AVG(duration), a.title FROM tracks t 
JOIN albums a ON a.id = t.album_id 
GROUP BY a.title 

SELECT DISTINCT nickname FROM artists a 
JOIN artists_albums_info aai ON a.id = aai.artist_id 
JOIN albums a2 ON a2.id = aai.album_id 
WHERE release_year != 2020

SELECT c.title FROM collections c 
JOIN tracks_collections_info tci ON c.id = tci.collection_id 
JOIN tracks t ON t.id = tci.track_id 
JOIN artists_albums_info aai ON aai.album_id = t.album_id 
JOIN artists a ON a.id = aai.artist_id 
WHERE nickname IN ('Bob')
