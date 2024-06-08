
-- Название и продолжительность самого длительного трека.--
select name,duration from tracks
where duration in (select MAX(duration) from tracks);

--Название треков, продолжительность которых не менее 3,5 минут.--
select name from tracks where duration >= '3 minutes 30 seconds';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.--
select name from collection where year between 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова.--
select name from musician where NAME not like '% %';

--Название треков, которые содержат слово «мой» или «my».--
select name from tracks where UPPER(name) like '%MY%';

--Количество исполнителей в каждом жанре.--
select count(musician.id),genre."name"  from musician
inner join musiciangenre on musician.id =musiciangenre.musicianid 
inner join genre on genre.id = musiciangenre.genreid
group by genre."name" ;

--Количество треков, вошедших в альбомы 2019–2020 годов.--
select count(tracks.id) from tracks 
inner join album on album.id =tracks.albumid
group by album."year"
having album."year" between 2019 and 2020;

--Средняя продолжительность треков по каждому альбому.--
select avg(tracks.duration) as avgduration ,album."name"  from tracks 
inner join album on album.id =tracks.albumid
group by album."name" ;

--Все исполнители, которые не выпустили альбомы в 2020 году.--
select distinct  musician."name"  from musician
inner join musicianalbum on musician.id = musicianalbum.musicianid 
inner join album on album.id = musicianalbum.albumid
where musician."name" not in 
(select musician."name" from musician 
inner join musicianalbum on musician.id = musicianalbum.musicianid 
inner join album on album.id = musicianalbum.albumid
where album."year" = 2020);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).--
select collection."name"  from musician
inner join musicianalbum on musician.id = musicianalbum.musicianid 
inner join album on album.id = musicianalbum.albumid
inner join tracks on album.id =tracks.albumid
inner join trackscollection on trackscollection.trackid = tracks.id
inner join collection on collection.id = trackscollection.collectionid 
where musician."name" = 'Phoenix';

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.--
select distinct album."name"  from musician
inner join musicianalbum on musician.id = musicianalbum.musicianid 
inner join album on album.id = musicianalbum.albumid
inner join musiciangenre on musiciangenre.musicianid = musician.id 
inner join genre on musiciangenre.genreid = genre.id
group by album."name" 
having count(genre."name") > 1;


--Наименования треков, которые не входят в сборники.--
select tracks."name"  from tracks
left join trackscollection on trackscollection.trackid = tracks.id
left join collection on collection.id = trackscollection.collectionid
where collection.id is NULL;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.--
select musician."name"  from musician
inner join musicianalbum on musician.id = musicianalbum.musicianid 
inner join album on album.id = musicianalbum.albumid
inner join tracks on album.id =tracks.albumid
where tracks.duration in (select min(tracks.duration) from tracks);

--Названия альбомов, содержащих наименьшее количество треков.--
select album."name", count(tracks."name")  from tracks 
inner join album on album.id =tracks.albumid
group by album."name" 
having count(tracks."name") in (select min(counts) from 
(select count(tracks."name") as counts from tracks 
inner join album on album.id =tracks.albumid
group by album."name")) ;


