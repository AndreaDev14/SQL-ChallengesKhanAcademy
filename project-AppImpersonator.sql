/*Project: App impersonator

 In this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), 
 and write SQL statements that might look like their own SQL.

*/
-- CUPS OF COFFEE PER DAY
--CREATE a table to store the data.
CREATE TABLE cups_coffee (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description TEXT,
    number INTEGER,
    price INTEGER);

-- INSERT a few example rows in the table.  
INSERT INTO cups_coffee (description,number,price)
    VALUES ("Coffee with milk", 2, 5 );
INSERT INTO cups_coffee (description,number,price)
    VALUES ("Coffee with milk and cream", 1, 3);
INSERT INTO cups_coffee (description,number,price)
    VALUES ("Espresso", 3, 0);
INSERT INTO cups_coffee (description,number,price)
    VALUES ("Americano", 1, 2);

SELECT * FROM cups_coffee;

--Use an UPDATE to emulate what happens when you edit data in the app.

UPDATE cups_coffee SET price = 2 
WHERE id = 3;
SELECT * FROM cups_coffee;

--Use a DELETE to emulate what happens when you delete data in the app.
DELETE FROM cups_coffee WHERE id = 4; 

SELECT * FROM cups_coffee;

--  Daily expense 
SELECT description, number, price, (price * number) AS Daily_Expense FROM cups_coffee;

-- Add Date
ALTER TABLE cups_coffee ADD date TEXT;
UPDATE cups_coffee SET date = "2023-1-15" WHERE id = 1;
UPDATE cups_coffee SET date = "2023-1-16"  WHERE id = 2;
UPDATE cups_coffee SET date = "2023-1-17"  WHERE id = 3;
UPDATE cups_coffee SET date = "2023-1-18"  WHERE id = 4;

SELECT date, description, number, price, (price * number) AS Daily_Expense FROM cups_coffee;
