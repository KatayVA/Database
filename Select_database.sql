
--Название и продолжительность самого длительного трека.
select track_name, duration_second_track
from tracks
where duration_second_track = (select max(duration_second_track) from tracks); 

--Название треков, продолжительность которых не менее 3,5 минут.
select track_name, duration_second_track from tracks
where duration_second_track > 3.5*60
ORDER by duration_second_track;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select collection_name, release_year_collection from collections
where release_year_collection between '2018-01-01' and '2020-12-31'
ORDER by release_year_collection;

--Исполнители, чьё имя состоит из одного слова.
select performer_name from perfomers
where performer_name not like '% %';

--Название треков, которые содержат слово «мой» или «my».
select track_name from tracks
where track_name Ilike '%my%';

--Количество исполнителей в каждом жанре.
select genre_name, COUNT(perfomers_id) from genresperfomer gp
left join perfomers p on gp.perfomers_id = p.id
group by genre_name
order by COUNT(perfomers_id) desc;

--Количество треков, вошедших в альбомы 2019–2020 годов.
select release_year, COUNT(track_name) from tracks t 
left join albums a on t.albumid = a.id
where release_year between '2018-01-01' and '2020-12-31' 
group by release_year
order by release_year desc;

--Средняя продолжительность треков по каждому альбому.
select album_name, AVG(duration_second_track) as d_s_t from tracks t 
left join albums a on t.albumid = a.id 
group by album_name
order by AVG(duration_second_track) desc;

--Все исполнители, которые не выпустили альбомы в 2020 году.
select performer_name  from Perfomers
where id not in(
select perfomers_id from perfomers p 
left join performeralbum pa on p.id = pa.perfomers_id
left join albums a on pa.album_id = a.id
where a.release_year between '2020-01-01' and '2020-12-31'
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select collection_name from collections c 
left join collectiontrack ct on ct.collection_id = c.id
left join tracks t on ct.track_id = t.id 
left join albums a on t.albumid = a.id  
left join performeralbum pa on a.id = pa.album_id
left join perfomers p on pa.perfomers_id = p.id
where performer_name like 'GAYAZOV%';
