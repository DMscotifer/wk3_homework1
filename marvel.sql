DROP TABLE attendances;
DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE attendances (
	id SERIAL8 PRIMARY KEY,
	person_id INT REFERENCES people(id) ON DELETE CASCADE,
	movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO people (name) VALUES ('Sarah Bartlett');
INSERT INTO people (name) VALUES ('Kelsie Braidwood');
INSERT INTO people (name) VALUES ('Liam Kavenns');
INSERT INTO people (name) VALUES ('Daniel Childs');
INSERT INTO people (name) VALUES ('Victor Chugbo');
INSERT INTO people (name) VALUES ('Brian Cooke');
INSERT INTO people (name) VALUES ('Patrick Cullen');
INSERT INTO people (name) VALUES ('Roberto De Marco');
INSERT INTO people (name) VALUES ('Ruaridh Dunbar');
INSERT INTO people (name) VALUES ('Edward Fallon');
INSERT INTO people (name) VALUES ('Hadsan Geele');
INSERT INTO people (name) VALUES ('Paul Kelly');
INSERT INTO people (name) VALUES ('John McCollum');
INSERT INTO people (name) VALUES ('Andrew Lowrie');
INSERT INTO people (name) VALUES ('Callum Mackenzie');
INSERT INTO people (name) VALUES ('Chris Marshall');
INSERT INTO people (name) VALUES ('Fraser McKay');
INSERT INTO people (name) VALUES ('Lyle Mitchell');
INSERT INTO people (name) VALUES ('Stuart O''Donnell');
INSERT INTO people (name) VALUES ('Connor Rose');
INSERT INTO people (name) VALUES ('Nikhil Sharma');
-- INSERT INTO people (name) VALUES ('Scott Stevenson');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '15:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:30');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '23:45');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '16:35');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '17:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '13:30');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:10');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '16:30');

INSERT INTO attendances (person_id, movie_id) VALUES (10, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (18, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (18, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (18, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (16, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (22, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (20, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (19, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 16);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (18, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (17, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (21, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (18, 10);

UPDATE people SET name = 'Liam Cavens' WHERE name = 'Liam Kavenns';

DELETE FROM movies WHERE title = 'Batman Begins';

INSERT INTO people (name) VALUES ('Alan Russell');

DELETE FROM people WHERE name = 'John McCollum';

INSERT INTO movies (title, year, show_time) VALUES ('Spiderman: Homecoming', 2017, '20:30');

UPDATE movies SET show_time = '21:00' WHERE title = 'Guardians of the Galaxy';

UPDATE movies SET show_time = '22:00' WHERE title = 'Guardians of the Galaxy 2';

UPDATE people
    SET name = 'Agent Smith'
    WHERE name IN ('Sarah Bartlett', 'Nikhil Sharma', 'Victor Chugbo','Alan Russell');
