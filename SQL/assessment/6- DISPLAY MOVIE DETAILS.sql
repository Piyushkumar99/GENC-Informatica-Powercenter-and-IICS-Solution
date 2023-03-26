-- DISPLAY MOVIE DETAILS

-- Please follow the instructions given below. Write a query to display the movie id, movie name,release year,director name of movies acted by the leadactor1 who acted maximum number of movies . Display the records sorted in ascending order based on movie name.


SELECT m.movie_id, m.movie_name, m.release_year, m.director_name FROM movies_master m
WHERE m.lead_actor_name1 = (
	SELECT lead_actor_name1 FROM movies_master
    GROUP BY lead_actor_name1
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
ORDER BY m.movie_name ASC;