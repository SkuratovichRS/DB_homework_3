SELECT title, duration FROM tracks 
WHERE duration = (SELECT MAX(duration) FROM tracks);

SELECT title, duration FROM tracks 
WHERE duration >= 3.30;

SELECT title FROM collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT nickname FROM artists
where 1 = (length(nickname)-length(replace(nickname ,' ',''))+1);

SELECT title FROM tracks
where title LIKE '%мой%' OR title LIKE '%my%'



