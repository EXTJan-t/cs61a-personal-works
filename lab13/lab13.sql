.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = 'blue' and pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = 'blue' and pet = 'dog';


CREATE TABLE smallest_int_having AS
  SELECT time,smallest FROM students GROUP BY smallest HAVING COUNT(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color 
  FROM students AS a, students AS b
  WHERE a.time < b.time AND a.pet = b.pet and a.song = b.song;


CREATE TABLE sevens AS
  SELECT a.number FROM students AS a, numbers AS b 
  WHERE a.time = b.time AND (a.number = '7' or b.'7' = 'True'); 


CREATE TABLE average_prices AS
  SELECT category, AVG(MSPR) FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT item, store, MIN(price) FROM inventory GROUP BY item;


CREATE TABLE helper AS
  SELECT name, min(MSPR / rating), store
  FROM products, inventory
  GROUP BY category
  HAVING name = item;

CREATE TABLE shopping_list AS
  SELECT name, store FROM helper

CREATE TABLE total_bandwidth AS
  SELECT SUM(b.Mbs) from shopping_list as a, stores as b WHERE a.store = b.store;

