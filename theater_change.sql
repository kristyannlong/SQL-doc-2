alter table movie_movie
add column duration VARCHAR(20)

update movie_movie
set duration = '2 hrs, 48 mins'
where movie_id = 1;