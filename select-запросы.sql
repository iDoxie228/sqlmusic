-- Задание 2

select title, time
from track
order by time desc
limit 1;

select title
from track
where time >= 210;

select title
from collection
where pub_date between '2018-01-01' AND '2020-12-31';

select name
from artist
where name not like '% %';

select title
from track
where title ilike 'мой %' 
	or title ilike '% мой %'
	or title ilike '% мой'
	or title ilike 'мой'
	or title ilike 'my %' 
	or title ilike '% my %'
	or title ilike '% my'
	or title ilike 'my';

--Задание 3

select genre.name, count(genre_artist.artist_id)
from genre
join genre_artist on genre.genre_id = genre_artist.genre_id
group by genre.name;

select count(track.track_id)
from track
join album on track.album_id = album.album_id
where album.pub_date between '2019-01-01' and '2020-12-31';

select album.title, AVG(track.time)
from track
join album on track.album_id = album.album_id
group by album.title

select name
from artist
where artist_id not in (
	select artist_id
	from artist_album
	where album_id in (
	select album_id
	from album
	where pub_date between '2020-01-01' and '2020-12-31')
);
	
select distinct collection.title
from collection 
join track_collection on collection.collection_id = track_collection.collection_id
join track on track_collection.track_id = track.track_id
join album on track.album_id = album.album_id
join artist_album on album.album_id = artist_album.album_id
join artist on artist_album.artist_id = artist.artist_id
where artist.name = 'Loc-Dog';

--Задание 4

select distinct album.title
from album
join artist_album on album.album_id = artist_album.album_id
join genre_artist on artist_album.artist_id = genre_artist.artist_id
group by album.title, artist_album.artist_id
having count(distinct genre_artist.genre_id) > 1;

select track.title
from track
left join track_collection on track.track_id = track_collection.track_id
where track_collection.track_id is null;

select artist.name
from artist
join artist_album on artist.artist_id = artist_album.artist_id
join album on artist_album.album_id = album.album_id
join track on album.album_id = track.album_id
where track.time = (select min(track.time) from track);

select album.title, count(track.track_id) as track_count
from album
left join track on album.album_id = track.album_id
group by album.title
having count(track.track_id) = (
    select min(track_count)
    from (
        select count(track.track_id) as track_count
        from album
        left join track on album.album_id = track.album_id
        group by album.album_id
    )
);