CREATE TABLE leaders2(
id integer PRIMARY KEY,
name text,
country integer,
worth float,
FOREIGN KEY(country) REFERENCES facts(id));