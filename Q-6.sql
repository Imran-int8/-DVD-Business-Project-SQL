
-- TOP 10 movie actors who's movies sold more in lifetime --

SELECT
    a.actor_id,
    CONCAT(a.first_name, ' ', a.last_name) AS actor_name,
    COUNT(*) AS movies_sold
FROM
    actor a
JOIN
    film_actor fa ON a.actor_id = fa.actor_id
GROUP BY
    a.actor_id, actor_name
ORDER BY
    movies_sold DESC
LIMIT 10;
