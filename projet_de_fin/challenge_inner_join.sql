SELECT film.film_id, title, language.name, category.name
FROM film
JOIN language ON language.language_id=film.language_id
JOIN film_category ON film.film_id=film_category.film_id
JOIN category ON category.category_id=film_category.category_id;