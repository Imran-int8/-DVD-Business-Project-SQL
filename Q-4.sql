
-- Which store is genrating more profit in terms of rentals ---

SELECT
    s.store_id AS Store_ID,
    CONCAT(a.first_name, ' ', a.last_name) AS Manager_Name,
    SUM(p.amount) AS Total_Revenue,
    COUNT(r.rental_id) AS Total_Rentals
FROM
    store s
JOIN
    staff a ON s.manager_staff_id = a.staff_id
JOIN
    customer c ON s.store_id = c.store_id
JOIN
    rental r ON c.customer_id = r.customer_id
JOIN
    payment p ON r.rental_id = p.rental_id
GROUP BY
    s.store_id, a.first_name, a.last_name
ORDER BY
    Total_Revenue DESC;

SELECT * FROM sales_by_store;


