SELECT store.store_id, SUM(payment.amount)
FROM store
INNER JOIN staff ON staff.staff_id = store.manager_staff_id
INNER JOIN payment ON payment.staff_id = staff.staff_id
GROUP BY store.store_id;
