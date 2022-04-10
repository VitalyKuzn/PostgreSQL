create table if not exists tracks (
	id serial primary key,
	name_track varchar(100) not null unique,
	time_track  timestamp
	genre_id integer REFERENCES genre(id)
);

create table if not exists album (
	id serial primary key,
	name_album varchar(100) not null unique,
	year_of_release integer,
	track_id integer references tracks(id)
	genre_id integer REFERENCES genre(id)
);

create table if not exists executor (
	id serial primary key,
	nickname varchar(100) not null unique,
	album_id integer references album(id)
	genre_id integer REFERENCES genre(id)
);

create table if not exists genre (
	id serial primary key,
	name_genre varchar(100) not null unique,
	executor_id integer references executor(id)
);