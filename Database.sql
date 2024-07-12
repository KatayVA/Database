create table IF not exists Genres (
id SERIAL primary key,
genre_name VARCHAR(80) not NULL
);

create table if not exists Perfomers (
id SERIAL primary key,
performer_name VARCHAR(80) not null
);

create table if not exists GenresPerfomer (
genres_id INTEGER references Genres(id),
perfomers_id INTEGER references Perfomers(id)
constraint pk primary key
);

create table if not exists Albums (
id SERIAL primary key,
album_name VARCHAR(80) not null,
release_year date
);

create table if not exists PerformerAlbum (
id SERIAL primary key,
album_id INTEGER not null references Albums(id),
perfomers_id INTEGER not null references Perfomers(id)
);

create table if not exists Tracks (
id INTEGER primary key references Albums(id),
track_name VARCHAR(80) not null,
duration_track time
);

create table if not exists Collections (
id SERIAL primary key,
collection_name VARCHAR(80) not null,
release_year_collection date
);

create table if not exists CollectionTrack (
id SERIAL primary key,
track_id INTEGER not null references tracks(id),
collection_id INTEGER not null references collections(id)
);










