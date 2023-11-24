SELECT Major, Major_category
FROM recent_grads
WHERE Major_category in ('Business', 'Arts', 'Health')
AND (Employed > 20000 or Unemployment_rate<0.051);