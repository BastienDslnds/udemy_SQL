SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory ON film.film_id = inventory.film_id
WHERE inventory_id is NULL;