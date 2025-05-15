insert into genres(genre_name)
values('Рок'), ('Поп'), ('Электронная музыка');

insert into perfomers(performer_name)
values('Ария'), ('Король и шут'), ('GAYAZOV$ BROTHER$'), ('The Prodigy'), ('Джоконда'), ('Rammstein'), 
('Marilyn Manson'), ('Thirty Seconds to Mars'), ('Cream Soda'), ('Монеточка');

insert into genresperfomer(genres_id, perfomers_id, genre_name)
values (1, 1, 'Рок'), (1, 2, 'Рок'), (2, 3, 'Поп'), (1, 4, 'Рок'), (3, 4, 'Электронная музыка'), (1, 5, 'Рок'), (1, 6, 'Рок'), (1, 7, 'Рок'), (1, 8, 'Рок'), (3, 9, 'Электронная музыка'), (2, 10, 'Поп');

insert into albums(album_name, release_year)
values('Генератор зла', '1998-05-02'), ('Театръ демона', '2010-10-11'), ('Пошла жара', '2021-06-17'), 
('No Tourists', '2018-11-02'), ('Каждый охотник желает знать', '2021-06-25'), ('Rammstein', '2019-05-17'), 
('WE ARE CHAOS', '2020-09-11'), ('America', '2018-04-06'), ('Кредо', '2019-03-15'), ('Красиво', '2018-03-30'), ('Раскраски для взрослых', '2018-05-18');

insert into PerformerAlbum(album_id, perfomers_id)
values(1, 1), (2, 2), (3, 3), (4, 4), (6, 6), (7, 7), (8, 8), (9, 3), (10, 9), (11, 10);

insert into tracks(AlbumId, track_name, duration_second_track)
values(1, 'Смотри', 257); 

insert into tracks(AlbumId, track_name, duration_second_track)
values(1, 'Грязь', 266), (1, 'Пытка тишиной', 331), (2, 'Театральный демон', 200), (2, 'Танец злобного гения', 213), (2, 'Король вечного сна', 301), 
(3, 'Пошла жара', 150), (3, 'Формула скорости', 182), (4, 'Champions of London', 269), (4, 'Boom Boom Tap', 243), (4, 'We Live Forever', 206), 
(5, 'Костры из книг', 212), (6, 'Deutschland', 314), (6, 'Radio', 262), (6, 'Sex', 214), (7, 'Paint You with My Love', 257), (7, 'Keep My Head Togethe', 209), (7, 'We Are Chaos', 240), 
(8, 'Great Wide Open', 269), (8, 'Hail to the Victor', 193), (8, 'Dawn Will Rise', 214), (9, 'Ёжик в тумане', 199), (9, 'Не все дома', 203), (9, 'Прикончим текилу', 191), 
(10, 'Золотой Мальчик', 334), (10, 'Одержимость', 326), (11, 'Нет монет', 262), (11, '90', 193); 

insert into tracks(AlbumId, track_name, duration_second_track)
values(9, 'До встречи на танцполе', 266);

insert into Collections(collection_name, release_year_collection)
values('ТОП-100 Россия', '2020-12-30'), ('Рок-хиты: 2020', '2020-12-24'), ('200 OF THE BEST ELECTRONIC MUSIC TRACKS IN 2018', '2019-01-10'), ('Величайшие хиты', '2006-12-31');

insert into CollectionTrack(track_id, collection_id)
values(29, 1);