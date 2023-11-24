SELECT nominations.movie, ceremonies.year
FROM nominations
INNER JOIN ceremonies
ON nominations.ceremony_id ==ceremonies.id
WHERE nominations.nominee=='Natalie Portman';