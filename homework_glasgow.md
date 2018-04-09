# SQL Homework

The Glasgow Film Theatre are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'
```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:
```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;

2. Return ONLY the name column from the 'people' table

SELECT name FROM people;

3. Oops! Someone at CodeClan spelled Liam's name wrong! Change it to reflect the proper spelling ('Liam Kavenns' should be 'Liam Cavens').

UPDATE people SET name = 'Liam Cavens' WHERE name = 'Liam Kavenns';

4. Return ONLY your name from the 'people' table.

SELECT * FROM people WHERE id =22;

5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';

6. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Alan Russell');

7. John McCollum has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'John McCollum';

8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Spider-man: Homecoming'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Spiderman: Homecoming', 2017, '20:30')

9. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 15:30 to 21:00, and the 'Guardians of the Galaxy 2' show time from '16:30' to '22:00'.

UPDATE movies SET show_time = '21:00' WHERE title = 'Guardians of the Galaxy';

UPDATE movies SET show_time = '22:00' WHERE title = 'Guardians of the Galaxy 2';



## Extension

1. Research how to delete multiple entries from your table in a single command.

UPDATE people
    SET name = 'Agent Smith'
    WHERE name IN ('Sarah Bartlett', 'Nikhil Sharma', 'Victor Chugbo','Alan Russell');
