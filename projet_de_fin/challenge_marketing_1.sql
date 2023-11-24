SELECT title, COUNT(rental_id) AS nb_of_rentals, COUNT(rental_id) * rental_rate AS revenue
FROM film
INNER JOIN inventory inv ON inv.film_id=film.film_id
INNER JOIN rental ON rental.inventory_id=inv.inventory_id
GROUP BY title, rental_rate
ORDER BY revenue DESC;