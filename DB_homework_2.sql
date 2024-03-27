create table if not exists artists (
	id SERIAL primary key,
	nickname VARCHAR(20) not null	
);
create table if not exists genres (
	id SERIAL primary key,
	title VARCHAR(20) not null
);
create table if not exists artists_genres_info (
	artist_id INT not null references artists(id),
	genre_id INT not null references genres(id),
	constraint ag primary key (artist_id, genre_id)
	
);
create table if not exists albums (
	id SERIAL primary key,
	title VARCHAR(20) not null,
	release_year INT not null
);
create table if not exists artists_albums_info (
	artist_id INT not null references artists(id),
	album_id INT not null references albums(id),
	constraint aa primary key (artist_id, album_id)
);
create table if not exists tracks (
	id SERIAL primary key,
	title VARCHAR(20) not null,
	duration FLOAT not null,
	album_id INT not null references albums(id)
);
create table if not exists collections (
	id SERIAL primary key,
	title VARCHAR(20) not null,
	release_year INT not null
);
create table if not exists tracks_collections_info (
	track_id INT not null references tracks(id),
	collection_id INT not null references collections(id),
	constraint tc primary key (track_id, collection_id)
)
