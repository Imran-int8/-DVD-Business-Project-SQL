
-- which are the best selling movie categories in a descending order--

SELECT 
    c.name AS category_name,
    SUM(p.amount) AS total_sales
FROM 
    category AS c
JOIN 
    film_category AS fc ON c.category_id = fc.category_id
JOIN 
    film AS f ON fc.film_id = f.film_id
JOIN 
    inventory AS i ON f.film_id = i.film_id
JOIN 
    rental AS r ON i.inventory_id = r.inventory_id
JOIN 
    payment AS p ON r.rental_id = p.rental_id
GROUP BY 
    c.name
ORDER BY 
    total_sales DESC;
