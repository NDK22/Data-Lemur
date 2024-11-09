with cte as(SELECT a.artist_name, Dense_rank() over (order by count(a.artist_name) desc) as artist_rank FROM artists a join songs s on s.artist_id=a.artist_id
join global_song_rank g on g.song_id=s.song_id   
where g.rank<=10 group by a.artist_name)
select * from cte where artist_rank<=5
