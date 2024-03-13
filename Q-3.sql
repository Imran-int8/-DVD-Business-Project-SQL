--  which actor is having more movie title in descending order. --

SELECT
    actor.actor_id,
    actor.first_name,
    actor.last_name,
    COUNT(film_actor.film_id) AS movie_count
FROM
    actor
JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY
    actor.actor_id, actor.first_name, actor.last_name
ORDER BY
    movie_count DESC;
