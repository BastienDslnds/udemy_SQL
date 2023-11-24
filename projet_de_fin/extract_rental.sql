SELECT EXTRACT (YEAR FROM rental_date), EXTRACT (MONTH FROM rental_date), COUNT(rental_id) AS total_rentals, COUNT(DISTINCT customer_id) AS unique_rental 
FROM rental
GROUP BY 1, 2;