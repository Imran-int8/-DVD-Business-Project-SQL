
-- Most rented dvds by customers by category --

SELECT
    c.name AS category_name,
    f.title AS film_title,
    COUNT(*) AS rental_count
FROM
    category c
JOIN
    film_category fc ON c.category_id = fc.category_id
JOIN
    film f ON fc.film_id = f.film_id
JOIN
    inventory i ON f.film_id = i.film_id
JOIN
    rental r ON i.inventory_id = r.inventory_id
GROUP BY
    c.name, f.title
ORDER BY
    c.name, rental_count DESC;
