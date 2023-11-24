import sqlite3

connexion = sqlite3.connect('jobs.db/factbook.db')
cursor = connexion.cursor()

query = "select name from facts order by population asc limit 10;"

result = cursor.execute(query).fetchall()
print(result[0:1])
