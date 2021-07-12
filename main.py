from pprint import pprint

import sqlalchemy as sqlalchemy

db = 'postgresql://postgres:024211@localhost:5432/postgres'
engine = sqlalchemy.create_engine(db)
connection = engine.connect()
# pprint(sqlalchemy.inspect(engine).get_table_names())
result = connection.execute("""SELECT name,year FROM album WHERE year=2008;""").fetchall()
print('\nПесни 2008 года')
pprint(result)
result = connection.execute("""SELECT name,lenght FROM track ORDER BY lenght DESC LIMIT 1;""").fetchall()
print('\nСамая длинная песня')
pprint(result)
result = connection.execute("""SELECT name FROM track WHERE lenght>3.3;""").fetchall()
print('\nПесни дольше 3,5 минут')
pprint(result)
result = connection.execute("""SELECT name FROM collection WHERE year BETWEEN 2018 and 2020;""").fetchall()
print('\nСборники 2018-2020')
pprint(result)
result = connection.execute("""SELECT name FROM musician WHERE name NOT LIKE '%% %%';""").fetchall()
print('\nОднословные исполнители')
pprint(result)
result = connection.execute("""SELECT name FROM track WHERE name LIKE '%%my%%';""").fetchall()
print('\nПесни со словом my / мой')
pprint(result)
