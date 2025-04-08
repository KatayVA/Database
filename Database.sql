create table if not exists Genres (
id SERIAL primary key,
genre_name VARCHAR(80) not NULL
);

create table if not exists Perfomers (
id SERIAL primary key references Genres(id),
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
release_year date check(release_year>=1950) not null
);

create table if not exists PerformerAlbum (
id SERIAL primary key,
album_id INTEGER not null references Albums(id),
perfomers_id INTEGER not null references Perfomers(id)
constraint pk primary key
);

create table if not exists Tracks (
id INTEGER primary key references Albums(id),
track_name VARCHAR(80) not null,
duration_second_track INTEGER check(duration_second_track<=1200) not null    
);

create table if not exists Collections (
id SERIAL primary key,
collection_name VARCHAR(80) not null,
release_year_collection date check(release_year_collection>=1950) not null
);

create table if not exists CollectionTrack (
id SERIAL primary key,
track_id INTEGER not null references tracks(id),
collection_id INTEGER not null references collections(id)
);