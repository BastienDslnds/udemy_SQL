SELECT Major_category, avg(Low_wage_jobs)/avg(Total) AS low_wage_proportion
FROM recent_grads
GROUP BY Major_category
HAVING low_wage_proportion > 0.1;
