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

# второе задание


result = connection.execute("""SELECT g.name, COUNT(id_musician) 
FROM genre g LEFT JOIN genre_musician gm 
ON g.id=gm.id_genre
GROUP BY g.name;""").fetchall()
print('\nКоличество исполнителей по жанрам')
pprint(result)
result = connection.execute("""SELECT COUNT(t.name) 
FROM album a JOIN track t
ON a.id=t.id_album
WHERE a.year BETWEEN 2019 AND 2020;""").fetchall()
print('\nКоличество песен, попавшие в альбомы в 2019-2020 годах')
pprint(result)
result = connection.execute("""SELECT a.name, AVG(t.lenght) 
FROM album a JOIN track t
ON a.id=t.id_album
GROUP BY a.name;""").fetchall()
print('\nСреднее время песни в альбоме')
pprint(result)
result = connection.execute("""SELECT DISTINCT m.name FROM musician m 
JOIN musician_album ma ON m.id=ma.id_musician
JOIN album a ON ma.id_album=a.id
WHERE a.year != 2020
;""").fetchall()
print('\nКто не выпустил альбом в 2020 ')
pprint(result)
result = connection.execute("""SELECT collection.name FROM collection
JOIN track_collection tc ON collection.id=tc.id_collection
JOIN track t ON tc.id_track=t.id
JOIN album a ON t.id_album=a.id
JOIN musician_album ma ON a.id=ma.id_album
JOIN musician m ON ma.id_musician=m.id
WHERE m.name LIKE '%%Шуфутинск%%';""").fetchall()
print('\nСборники с Шуфутинским')
pprint(result)


result = connection.execute("""SELECT a.name, count(g.name) FROM album a
JOIN musician_album ma ON a.id = ma.id_album
JOIN musician m ON m.id = ma.id_musician
JOIN genre_musician gm ON m.id = gm.id_musician
JOIN genre g ON g.id = gm.id_genre
group by a.name
having count(g.name) > 1
;""").fetchall()
print('\nАльбомы с разным жанром')
pprint(result)

result = connection.execute("""SELECT t.name FROM track t
LEFT JOIN track_collection tc ON t.id=tc.id_track
WHERE tc.id_track IS null ;""").fetchall()
print('\nТреки не вошедшие в коллекцию')
pprint(result)


result = connection.execute("""SELECT m.name, t.lenght FROM track t 
JOIN album a ON t.id_album=a.id
JOIN musician_album ma ON a.id=ma.id_album
JOIN musician m ON ma.id_musician=m.id
GROUP BY m.name, t.lenght
HAVING t.lenght=(SELECT MIN(lenght) FROM track)
;""").fetchall()
print('\nКто написал самую короткую песню ')
pprint(result)

result = connection.execute("""SELECT a.name FROM album a
JOIN track t ON a.id = t.id_album
WHERE t.id_album in (
    SELECT id_album FROM track
    GROUP BY id_album
    HAVING COUNT(id) = (
        SELECT COUNT(id) FROM track
        GROUP BY id_album
        ORDER BY COUNT(id)
        LIMIT 1)
    )
;""").fetchall()
print('\nАльбомы с минимальным количеством песен')
pprint(result)


# JOIN track_collection tc ON col.id=tc.id_collection
# JOIN track t ON tc.id_track=t.id
# JOIN album a ON t.id_album=a.id
# JOIN musician_album ma ON a.id=ma.id_album
# JOIN musician m ON ma.id_musician=m.id
