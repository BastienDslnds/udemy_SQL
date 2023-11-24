SELECT customer.email, COUNT(rental.rental_id)
FROM customer
INNER JOIN rental ON rental.customer_id = customer.customer_id
GROUP BY customer.email
HAVING COUNT(rental.rental_id)>40;