/* 
Challenge: Book list database
*/

/*Step 1
What are your favorite books? You can make a database table to store them in! In this first step, 
-- Create a table to store your list of books. It should have columns for id, name, and rating.*/

CREATE TABLE book (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

INSERT INTO book (id, name, rating)
VALUES( 1, "The Da Vinci Code", 10);

INSERT INTO book (id, name, rating)
VALUES( 2, "Amalgama", 9);


INSERT INTO book (id, name, rating)
VALUES( 3, "Harry Potter and the Philosopher's Stone", 10);