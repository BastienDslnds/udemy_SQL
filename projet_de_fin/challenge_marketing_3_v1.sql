SELECT category.name, COUNT(rental.rental_id)
FROM film
INNER JOIN film_category ON film_category.film_id=film.film_id
INNER JOIN category ON category.category_id = film_category.category_id
INNER JOIN inventory ON inventory.film_id = film.film_id
INNER JOIN rental ON rental.inventory_id = inventory.inventory_id
WHERE category.name IN ('Action', 'Comedy', 'Animation')
GROUP BY category.name;