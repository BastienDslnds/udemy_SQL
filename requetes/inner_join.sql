SELECT nominations.movie
FROM nominations
INNER JOIN ceremonies
ON nominations.ceremony_id==ceremonies.id
WHERE nominations.won==1 and ceremonies.year==2010;