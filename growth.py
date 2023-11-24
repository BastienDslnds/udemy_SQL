import pandas as pd
import sqlite3
import math

connexion = sqlite3.connect('jobs.db/factbook.db')
df = pd.read_sql_query('select * from facts;', connexion)
print(df[:1])


def pop_growth(x):
    """Estimer la population future

    Args:
        x (_type_): un pays = une ligne du dataframe
    """
    return x['population'] * math.e ** ((x['population_growth'] / 100) * 35)


df = df.dropna(axis=0)
df = df[(df['area_land'] > 0) & (df['population'] > 0)]

df['pop_2050'] = df.apply(lambda row: pop_growth(row), axis=1)

df_10 = df.sort_values(['pop_2050'], ascending=False)
df_10 = df_10['name'].iloc[0:9]
print(df_10)
