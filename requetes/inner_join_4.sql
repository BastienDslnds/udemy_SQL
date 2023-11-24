SELECT movies.movie, actors.actor
FROM movies
INNER JOIN movies_actors
ON movies.id == movies_actors.movie_id
INNER JOIN actors
ON actors.id == movies_actors.actor_id
WHERE actor = "Natalie Portman";
