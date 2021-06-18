-- Extracting the Quantitative values

select 
	count(*) as Total_Songs,
	count(distinct(artists)) as Total_artist,
	count(distinct([key])) as Total_Types_of_key
from
	top2018



select a.artists as [Name of artists with Most Tracks]from
(
select 
	artists,
	count(artists) as count
from
	top2018
group by
	artists
) as a
where 
a.count = (select max(b.art_count) from 
	(select
	count(artists) as art_count
from 
	top2018
group by
	artists
) as b)


--	count = 6








select max(select
	--artists,
	(count(artists))
from 
	top2018

group by 
	artists
having
	count(artists) > 1
order by 
	2 desc


