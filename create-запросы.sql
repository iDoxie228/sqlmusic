create table if not exists artist(
	artist_id serial primary key,
	name varchar(40) not null
);

create table if not exists genre(
	genre_id serial primary key,
	name varchar(40) not null
);

create table if not exists album(
	album_id serial primary key,
	title varchar(80) not null,
	pub_date date not null
);

create table if not exists track(
	track_id serial primary key,
	title varchar(80) not null,
	time integer not null,
	album_id integer references album(album_id)
);

create table if not exists collection(
	collection_id serial primary key,
	title varchar(80) not null,
	pub_date date not null
);

create table if not exists genre_artist(
	genre_id integer references genre(genre_id),
	artist_id integer references artist(artist_id),
	primary key (genre_id, artist_id)
);

create table if not exists artist_album(
	artist_id integer references artist(artist_id),
    album_id integer references album(album_id),
    primary key (artist_id, album_id)
);

create table if not exists track_collection(
	track_id integer references track(track_id),
    collection_id integer references collection(collection_id),
    primary key (track_id, collection_id)
);







