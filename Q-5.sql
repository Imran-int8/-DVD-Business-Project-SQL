
-- what is the average rating for each movie categories--

SELECT c.name AS category_name, AVG(f.rating) AS average_rating
FROM film AS f
JOIN film_category AS fc ON f.film_id = fc.film_id
JOIN category AS c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY average_rating DESC;

