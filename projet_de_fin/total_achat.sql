SELECT customer_id, SUM(amount) AS total_achat
FROM payment
GROUP BY customer_id
ORDER BY total_achat DESC;