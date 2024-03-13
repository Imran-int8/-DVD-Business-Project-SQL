
-- Which movie category is selling the more rentals in a year.

SELECT
    EXTRACT(YEAR FROM r.rental_date) AS rental_year,
    c.name AS category_name,
    COUNT(*) AS rental_count
FROM
    rental r
JOIN
    inventory i ON r.inventory_id = i.inventory_id
JOIN
    film_category fc ON i.film_id = fc.film_id
JOIN
    category c ON fc.category_id = c.category_id
GROUP BY
    rental_year, category_name
ORDER BY
    rental_year, rental_count DESC;
