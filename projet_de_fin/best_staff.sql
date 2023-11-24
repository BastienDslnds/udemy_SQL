SELECT staff_id, count(payment_id) AS total_payments, SUM(amount)
FROM payment
GROUP BY staff_id;